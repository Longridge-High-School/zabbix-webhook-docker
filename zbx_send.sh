#!/bin/bash
host=$(echo $1 | jq -r '.host')
key=$(echo $1 | jq -r '.key')
value=$(echo $1 | jq -r '.value')
token=$(echo $1 | jq -r '.token')

# Ensure that the token is valid
if [ "$WEBHOOK_TOKEN" != "$token" ]; then 
  echo '{"error": "Invalid Token"}'
  exit 403
fi

zabbix_sender -z "$ZABBIX_SERVER" -s "$host" -k "$key" -o "$value"
