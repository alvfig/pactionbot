import datetime
import json
import os
import re
import requests
import sqlite3
from flask import Flask, request


app = Flask(__name__)
#with open("pactionbot.json") as SETUP_FILE:
    #SETUP = json.load(SETUP_FILE)
#BOT_TOKEN = SETUP["telegram"]["token"]
#BOT_TOKEN = os.getenv("PACTIONBOT", BOT_TOKEN)
BOT_TOKEN = os.getenv("PACTIONBOT_TOKEN", "")


HourFormat = "%H:%M"
B3Start = datetime.datetime(1900, 1, 1, 9)
B3End = datetime.datetime(1900, 1, 1, 18)


def bar_hour_to_number(barhour, timeframe=5):
    global HourFormat, B3Start
    barhour = datetime.datetime.strptime(barhour, HourFormat)
    offset = barhour - B3Start
    barnumber = offset.seconds // (60 * timeframe) + 1
    return barnumber


def bar_number_to_hour(barnumber, timeframe=5):
    global HourFormat, B3Start
    barnumber = int(barnumber)
    offset = datetime.timedelta(minutes=timeframe*(barnumber-1))
    barhour = B3Start + offset
    return barhour.strftime(HourFormat)


def hours_range(start, end, offset=datetime.timedelta(hours=1)):
    """Hours iterator"""
    currenthour = start
    while currenthour < end:
        yield currenthour
        currenthour += offset


def bar_table():
    global HourFormat, B3Start, B3End
    table = []
    for currenthour in hours_range(B3Start, B3End+datetime.timedelta(hours=1)):
        table.append("{} = {:3}".format(
            currenthour.strftime(HourFormat),
            bar_hour_to_number(currenthour.strftime(HourFormat))
        ))
    return "\n".join(table)


def get_meaning(initials):
    db = sqlite3.connect('file:pactionbot.db?mode=ro', uri=True)
    with db:
        c = db.cursor()
        ss = 'SELECT a.short, a.long FROM articles AS a LEFT JOIN articles_tags AS at ON a.article_id = at.article_id WHERE at.tag = ?'
        rs = c.execute(ss, (initials,)).fetchone()
        return rs[0] if rs else None


def format_telegram_url(method):
    global BOT_TOKEN
    return "https://api.telegram.org/bot{}/{}".format(BOT_TOKEN, method)


def cleanup(str):
    return re.sub(r"[^0-9A-Z]", "", str.upper())


def handle_slash(slash):
    command = cleanup(slash)
    if command.startswith("AJUDA") or command.startswith("HELP"):
        return "Digite uma sigla do método Al Brooks para saber o significado.\n\nSe precisar, envie uma mensagem para o autor: @alvfig (ele é meio lento mas é boa gente!)"
    if command.startswith("SOBRE"):
        return "Price Action Bot\n@pactionbot\nhttps://t.me/pactionbot\n\nAutor: @alvfig"
    if command.startswith("BN"):
        try:
            arguments = slash.split()
            barhour = arguments[1]
            timeframe = 5
            if 2 < len(arguments):
                timeframe = int(arguments[2])
            barnumber = bar_hour_to_number(barhour, timeframe)
            return "`{} = {}`".format(barhour, barnumber)
        except (IndexError, ValueError):
            return "Use: `/bn HORA [TIMEFRAME em minutos]`"
    elif command.startswith("BH"):
        try:
            arguments = slash.split()
            barnumber = arguments[1]
            timeframe = 5
            if 2 < len(arguments):
                timeframe = int(arguments[2])
            barhour = bar_number_to_hour(barnumber, timeframe)
            return "`{} = {}`".format(barnumber, barhour)
        except (IndexError, ValueError):
            return "Use: `/bh NÚMERO [TIMEFRAME em minutos]`"
    elif command.startswith("BT"):
        return "`{}`".format(bar_table())
    return "Comando desconhecido."


def answer_message(update):
    '''Answer a message'''
    data = {}
    data["chat_id"] = update["message"]["chat"]["id"]
    if "text" in update["message"]:
        message = update["message"]["text"]
        if message.startswith("/"):
            response = handle_slash(message)
        else:
            message = cleanup(message)
            if "CAMAR" in message:
                response = "`É A MÃE !! CAMARÃO É A MÃE !!`"
            else:
                acronym = message
                meaning = get_meaning(acronym)
                if meaning:
                    response = "`{} = {}`".format(acronym, meaning)
                else:
                    response = "`Você digitou direitinho?\n\nCalma aí, gente! Ainda tô aprendendo. Isso aqui não é fácil nem pra robô.\n\nAhhhh! Pergunta lá no posto ipiranga.`"
        data["text"] = response
        data["parse_mode"] = "Markdown"
        data["reply_to_message_id"] = update["message"]["message_id"]
        requests.post(format_telegram_url("sendMessage"), data=data)


def answer_inline(update):
    '''Answer a inline query'''
    data = {}
    data["inline_query_id"] = update["inline_query"]["id"]
    query = update["inline_query"]["query"]
    data["results"] = [{"InlineQueryResultArticle": {"type": "article", "id": "0", "title": "Sigla", "input_message_content": {"InputTextMessageContent": {"message_text": "`Ten Bars, Two Legs`", "parse_mode": "Markdown"}}}}]
    r = requests.post(format_telegram_url("answerInlineQuery"), data=data)
    print(json.loads(r.text))


@app.route("/", methods=["POST"])
@app.route("/{}".format(BOT_TOKEN), methods=["POST"])
def process_update():
    if request.method == "POST":
        update = request.get_json()
        if "message" in update:
            answer_message(update)
        elif "inline_query" in update:
            answer_inline(update)
        return "OK", 200


if __name__ == "__main__":
    app.run()
