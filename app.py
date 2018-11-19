import json
import os
import requests
from flask import Flask, request


app = Flask(__name__)
#with open("pactionbot.json") as SETUP_FILE:
    #SETUP = json.load(SETUP_FILE)
#BOT_TOKEN = SETUP["telegram"]["token"]
#BOT_TOKEN = os.getenv("PACTIONBOT", BOT_TOKEN)
BOT_TOKEN = os.getenv("PACTIONBOT_TOKEN", "")


MEANINGS = {
    "AI": "Always In",
    "AIL": "Always In Long - modo sempre comprado",
    "AIS": "Always In Short - modo sempre vendido",
    "BC": "Broad Channel - canal amplo",
    "BW": "Barbwire - arame farpado",
    "BRR": "Bear Reversal",
    "BO": "Breakout - rompimento",
    "BOM": "Breakout Mode - modo rompimento",
    "CLX": "Climax",
    "CT": "Countertrend",
    "DB": "Double Bottom - fundo duplo",
    "DT": "Double Top - topo duplo",
    "EB": "Entry Bar",
    "EMA": "Exponential Moving Average - média móvel exponencial",
    "FF": "Final Flag - bandeira final",
    "FT": "Follow Through",
    "G": "Gap",
    "GB": "Gap Bar",
    "HH": "Higher High",
    "HL": "Higher Low",
    "IB": "Inside Bar",
    "LH": "Lower High",
    "LL": "Lower Low",
    "MTR": "Major Trend Reversal - reversão majoritária de tendência",
    "MC": "Micro Channel",
    "MA": "Moving Average - média móvel",
    "OB": "Outside Bar",
    "PA": "Price Action",
    "PB": "Pullback - correção",
    "RV": "Reversal - reversão",
    "2E": "Second Entry",
    "2S": "Second Signal",
    "SH": "Swing High",
    "SL": "Swing Low",
    "TBTL": "Ten Bars, Two Legs - dez barras, duas pernas",
    "TC": "Tight Channel - canal estreito",
    "TE": "Trader's Equation - equação do trader",
    "TF": "Time Frame - tempo gráfico",
    "TR": "Trading Range - lateralidade",
    "TTR": "Tight Trading Range - lateralidade estreita",
    "CAMARAO": "É A MÃE !! CAMARÃO É A MÃE !!",
    "CAMARÃO": "É A MÃE !! CAMARÃO É A MÃE !!",
}


def get_meaning(initials):
    global MEANINGS
    return MEANINGS.get(initials, "Você digitou direitinho?\n\nCalma aí, gente! Ainda tô aprendendo. Isso aqui não é fácil nem pra robô.\n\nAhhhh! Pergunta lá no posto ipiranga.")


def format_telegram_url(method):
    global BOT_TOKEN
    return "https://api.telegram.org/bot{}/{}".format(BOT_TOKEN, method)


def answer_command(update):
    data = {}
    data["chat_id"] = update["message"]["chat"]["id"]
    if "text" in update["message"]:
        message = update["message"]["text"]
        initials = message.split()[-1].upper()
        data["text"] = "`{} = {}`".format(initials, get_meaning(initials))
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
