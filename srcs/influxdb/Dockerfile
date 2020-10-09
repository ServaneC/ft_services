FROM alpine:3.12

WORKDIR /tmp/

RUN apk update && apk add --no-cache influxdb supervisor \
    &&  apk add --no-cache --upgrade bash

COPY ./influxdb.conf /etc/influxdb/influxdb.conf

COPY supervisord.conf /etc/

COPY ./influxdb.sh .
RUN chmod +x influxdb.sh

EXPOSE 8086

VOLUME /var/lib/influxdb

ENTRYPOINT ./influxdb.sh