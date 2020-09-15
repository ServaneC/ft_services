FROM alpine:3.12.0

RUN apk update && apk add --no-cache influxdb bash

COPY ./influxdb.sh .

RUN chmod +x influxdb.sh

EXPOSE 8086

ENTRYPOINT ./influxdb.sh