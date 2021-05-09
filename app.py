import datetime
import json
import os
import re
import requests
import sqlite3
from flask import Flask, request
from bs4 import BeautifulSoup
from b3futurecontracts import *


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


def extract_adjust(table, contract):
    table_td = table.find('td', string=re.compile(contract))
    table_tr = table_td.parent
    return table_tr.find_all('td')[3].string


def parse_html(html_text):
    soup = BeautifulSoup(html_text, 'html.parser')

    # Date
    adjust_date = None
    element = soup.select_one('p.legenda')
    if element is not None:
        extract = re.search('(\d{2}/\d{2}/\d{4})', element.get_text())
        if extract is not None:
            adjust_date = extract.group(1)
            adjust_date = datetime.datetime.strptime(adjust_date, '%d/%m/%Y').date()

    # DOL
    adjust_string = extract_adjust(soup.table, r'\bDOL\b')
    adjust_dol = 1000 * float(adjust_string.replace(',', ''))

    # IND
    adjust_string = extract_adjust(soup.table, r'\bIND\b')
    adjust_ind = float(adjust_string.replace('.', ''))

    return adjust_date, adjust_dol, adjust_ind


def acquire_adjusts():
    response = requests.get('http://www2.bmf.com.br/pages/portal/bmfbovespa/lumis/lum-ajustes-do-pregao-ptBR.asp')
    html_text = response.text
    adjust_date, adjust_dol, adjust_ind = parse_html(html_text)
    dol_bound = 0.06
    dol_floor = (1 - dol_bound) * adjust_dol
    dol_ceil = (1 + dol_bound) * adjust_dol
    ind_bound = 0.10
    ind_floor = (1 - ind_bound) * adjust_ind
    ind_ceil = (1 + ind_bound) * adjust_ind
    return adjust_date, adjust_dol, dol_floor, dol_ceil, adjust_ind, ind_floor, ind_ceil


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
    if command.startswith("BH"):
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
    if command.startswith("BT"):
        return "`{}`".format(bar_table())
    if command.startswith("B3"):
        index = B3FutureIndex()
        dollar = B3FutureDollar()
        adjust_date, adjust_dol, dol_floor, dol_ceil, adjust_ind, ind_floor, ind_ceil = acquire_adjusts()
        response = """`\
 Contrato Atual | Vencimento | Próximo Contrato
----------------|------------|-----------------
{} / {} | {} |  {} / {}
{} / {} | {} |  {} / {}

        |    Mínimo |    Ajuste |    Máximo
--------|-----------|-----------|----------
WIN 10% |    {} |    {} |    {}
WDO  6% | {:.4f} | {:.4f} | {:.4f}
Ajuste atualizado em {}
`"""
        return response.format(
            *index.current_name(),
            index.rollover_date(),
            *index.current_name(index.rollover_date()+datetime.timedelta(days=1)),
            *dollar.current_name(),
            dollar.rollover_date(),
            *dollar.current_name(dollar.rollover_date()+datetime.timedelta(days=1)),
            int(ind_floor),
            int(adjust_ind),
            int(ind_ceil),
            dol_floor,
            adjust_dol,
            dol_ceil,
            adjust_date,
        )
    return "`Comando desconhecido.`"


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
                    response = "`Você digitou direitinho?\n\nCalma aí, gente! Ainda tô aprendendo. Isso aqui não é fácil nem pra robô.\n\nAhhhh! Pergunta lá no posto ipiranga.\n\n(Ou envie uma mensagem para @alvfig)`"
        data["text"] = response
        # data["parse_mode"] = "MarkdownV2"
        data["parse_mode"] = "Markdown"
        data["reply_to_message_id"] = update["message"]["message_id"]
        # data["reply_markup"] = {
        #     "keyboard": [
        #         [
        #             "insultar",
        #             "implorar",
        #             "tbtl",
        #         ],
        #         [
        #             "2lt",
        #             "m2b",
        #             "m2s",
        #         ],
        #     ],
        #     "resize_keyboard": True,
        #     "one_time_keyboard": True,
        # }
        # requests.post(format_telegram_url("sendMessage"), data=data)
        sender = [
            datetime.datetime.fromtimestamp(update["message"]["date"]).isoformat(),
            'USER:',
            str(update["message"]["from"]["id"]),
            update["message"]["from"]["first_name"],
        ]
        if "last_name" in update["message"]["from"]:
            sender.append(update["message"]["from"]["last_name"])
        else:
            sender.append("NO_LASTNAME")
        if 'username' in update["message"]["from"]:
            sender.append(update["message"]["from"]["username"])
        else:
            sender.append("NO_USERNAME")
        sender = ' '.join(sender)
        print(sender)
        print(update["message"]["text"])
        print(data["text"])
        print(30*'=')
        print(data)
        data["method"] = "sendMessage"
        return data


def answer_inline(update):
    '''Answer a inline query'''
    data = {}
    data["inline_query_id"] = update["inline_query"]["id"]
    query = update["inline_query"]["query"]
    data["results"] = [{"InlineQueryResultArticle": {"type": "article", "id": "0", "title": "Sigla", "input_message_content": {"InputTextMessageContent": {"message_text": "`Ten Bars, Two Legs`", "parse_mode": "Markdown"}}}}]
    # r = requests.post(format_telegram_url("answerInlineQuery"), data=data)
    print(json.loads(r.text))
    data["method"] = "answerInlineQuery"
    return data


@app.route("/", methods=["POST"])
@app.route("/{}".format(BOT_TOKEN), methods=["POST"])
def process_update():
    if request.method == "POST":
        update = request.get_json()
        if "message" in update:
            return answer_message(update)
        if "inline_query" in update:
            return answer_inline(update)
        return "OK", 200


if __name__ == "__main__":
    app.run()
