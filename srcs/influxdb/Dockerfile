FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add --no-cache wget tar

RUN wget https://dl.influxdata.com/influxdb/releases/influxdb-1.8.2_linux_amd64.tar.gz \
    && tar xvfz influxdb-1.8.2_linux_amd64.tar.gz \
    && rm influxdb-1.8.2_linux_amd64.tar.gz \
    && mv influxdb-1.8.2-1 influxdb

ENTRYPOINT ["tail", "-f", "/dev/null"]