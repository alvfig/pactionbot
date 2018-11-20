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
    "2BR": "2 Bars Reversal - reversão de duas barras",
    "2E": "Second Entry",
    "2LT": "Second Leg Trap - armadilha de segunda perna",
    "2S": "Second Signal",
    "AI": "Always In",
    "AIL": "Always In Long - modo sempre comprado",
    "AIS": "Always In Short - modo sempre vendido",
    "BC": "Broad Channel - canal amplo",
    "BE": "Break Even - encerrar a operação no empate, sem lucro nem prejuízo",
    "BGP": "Buying Pressure - pressão de compra",
    "BLR": "Bull Reversal - reversão de alta",
    "BLSHS": "Buy Low, Sell High, and Scalp - comprar baixo, vender alto, e lucrar curto (1:1)",
    "BO": "Breakout - rompimento",
    "BOM": "Breakout Mode - modo rompimento",
    "BP": "Breakout Pullback - rompimento e correção",
    "BRR": "Bear Reversal - reversão de baixa",
    "BW": "Barbwire - arame farpado",
    "CLX": "Climax",
    "CT": "Countertrend",
    "DB": "Double Bottom - fundo duplo",
    "DT": "Double Top - topo duplo",
    "EB": "Entry Bar",
    "EMA": "Exponential Moving Average - média móvel exponencial",
    "FBO": "Failed Breakout - falha de rompimento",
    "FF": "Final Flag - bandeira final",
    "FT": "Follow Through - continuidade",
    "G": "Gap",
    "GB": "Gap Bar",
    "H1": "High 1 - 1ª tentativa de retomar a tendência de alta",
    "H2": "High 2 - 2ª tentativa de retomar a tendência de alta",
    "H3": "High 3 - 3ª tentativa de retomar a tendência de alta",
    "H4": "High 4 - 4ª tentativa de retomar a tendência de alta",
    "HH": "Higher High",
    "HL": "Higher Low",
    "HOD": "High Of the Day - máxima do dia",
    "HOY": "High Of Yesterday - máxima do dia anterior",
    "HTF": "Higher Time Frame - tempo gráfico maior",
    "IB": "Inside Bar",
    "L1": "Low 1 - 1ª tentativa de retomar a tendência de baixa",
    "L2": "Low 2 - 2ª tentativa de retomar a tendência de baixa",
    "L3": "Low 3 - 3ª tentativa de retomar a tendência de baixa",
    "L4": "Low 4 - 4ª tentativa de retomar a tendência de baixa",
    "LH": "Lower High",
    "LL": "Lower Low",
    "LOD": "Low Of the Day - mínima do dia",
    "LOM": "Limit Orders Market - mercado de ordens limitadas",
    "LOY": "Low Of Yesterday - mínima do dia anterior",
    "MTR": "Major Trend Reversal - reversão majoritária de tendência",
    "MC": "Micro Channel",
    "MA": "Moving Average - média móvel",
    "OB": "Outside Bar",
    "PA": "Price Action",
    "PB": "Pullback - correção",
    "RV": "Reversal - reversão",
    "SGP": "Selling Pressure - pressão de venda",
    "SH": "Swing High",
    "SL": "Swing Low",
    "TBTL": "Ten Bars, Two Legs - dez barras, duas pernas",
    "TC": "Tight Channel - canal estreito",
    "TE": "Trader's Equation - equação do trader",
    "TF": "Time Frame - tempo gráfico",
    "TR": "Trading Range - lateralidade",
    "TRADE": "operação",
    "TRADER": "operador",
    "TREV": "Trend Reversal - reversão de tendência",
    "TTR": "Tight Trading Range - lateralidade estreita",
    "W": "Wedge - cunha",
}


def get_meaning(initials):
    global MEANINGS
    return MEANINGS.get(initials, None)


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
