# Zabbix Webhook Docker

Provides a webhook endpoint to provide data into Zabbix via `zabbix_sender`

## Environment Variables

|Variable|Required|Default|Description|
|:-------|:------:|:------|:----------|
|ZABBIX_SERVER|Yes||The Ip/Hostname of the Zabbix server to send data to.|
|WEBHOOK_TOKEN|Yes||The Key that needs to be included in requests for them to be sent to zabbix.|