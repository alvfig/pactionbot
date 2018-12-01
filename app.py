import json
import os
import requests
import sqlite3
from flask import Flask, request


app = Flask(__name__)
#with open("pactionbot.json") as SETUP_FILE:
    #SETUP = json.load(SETUP_FILE)
#BOT_TOKEN = SETUP["telegram"]["token"]
#BOT_TOKEN = os.getenv("PACTIONBOT", BOT_TOKEN)
BOT_TOKEN = os.getenv("PACTIONBOT_TOKEN", "")


def get_meaning(initials):
    db = sqlite3.connect('file:pactionbot.db?mode=ro', uri=True)
    with db:
        c = db.cursor()
        ss = 'SELECT a.short, a.long FROM articles AS a LEFT JOIN articles_tags AS at WHERE at.tag = ?'
        rs = c.execute(ss, (initials,)).fetchone()
        return rs[0] if rs else None


def format_telegram_url(method):
    global BOT_TOKEN
    return "https://api.telegram.org/bot{}/{}".format(BOT_TOKEN, method)


def answer_command(update):
    data = {}
    data["chat_id"] = update["message"]["chat"]["id"]
    if "text" in update["message"]:
        message = update["message"]["text"]
        response = []
        for initials in message.upper().split():
            if "CAMAR" in initials:
                response.append("É A MÃE !! CAMARÃO É A MÃE !!")
                break
            else:
                meaning = get_meaning(initials)
                if meaning:
                    response.append("`{} = {}`".format(initials, meaning))
        if response:
            data["text"] = "\n".join(response)
        else:
            data["text"] = "Você digitou direitinho?\n\nCalma aí, gente! Ainda tô aprendendo. Isso aqui não é fácil nem pra robô.\n\nAhhhh! Pergunta lá no posto ipiranga."
        data["parse_mode"] = "Markdown"
        data["reply_to_message_id"] = update["message"]["message_id"]
        requests.post(format_telegram_url("sendMessage"), data=data)


def answer_query(update):
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
            answer_command(update)
        elif "inline_query" in update:
            answer_query(update)
        return "OK", 200


if __name__ == "__main__":
    app.run()
