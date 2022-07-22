#!/bin/sh
BOT_TOKEN=XYZ
BOT_URL=https://xyz:9999
set_webhook()
{
    curl \
        --request POST \
        --header 'content-type: application/json' \
        --data '{"url": "'$BOT_URL'"}' \
        --url https://api.telegram.org/bot$2/setWebhook
}
set_webhook $BOT_URL $BOT_TOKEN
