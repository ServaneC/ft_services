FROM alpine:3.12.0

WORKDIR /tmp/

RUN apk update && apk add --no-cache influxdb \
    &&  apk add --no-cache --upgrade bash

# COPY ./influxdb.conf /etc/influxdb/influxdb.conf

COPY ./influxdb.sh .

RUN chmod +x influxdb.sh

EXPOSE 8086

ENTRYPOINT ./influxdb.sh