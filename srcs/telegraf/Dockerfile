FROM alpine:3.12

ARG INCOMING
ENV MINIKUBE_IP=${INCOMING}

RUN apk update && apk add wget tar curl nano gettext --no-cache

RUN mkdir /etc/telegraf && \
    wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz && \
    tar -C . -xzf telegraf-1.13.3-static_linux_amd64.tar.gz && \
    chmod +x telegraf/* && \
    cp telegraf/telegraf /usr/bin/ && \
    rm -rf *.tar.gz* telegraf/ && \
    rm -rf /var/cache/apk/*

COPY telegraf.conf /etc/telegraf/telegraf.conf
COPY telegraf.sh .

RUN chmod +x telegraf.sh

EXPOSE 4999

CMD ./telegraf.sh