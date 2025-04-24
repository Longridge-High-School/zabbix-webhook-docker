FROM ncarlier/webhookd:latest

USER root

RUN apk add zabbix-utils

ADD ./zbx_send.sh /scripts/zbx_send.sh
RUN chown webhookd:webhookd /scripts/zbx_send.sh
RUN chmod +x /scripts/zbx_send.sh

USER webhookd