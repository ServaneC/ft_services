FROM alpine:3.12.0

WORKDIR /tmp/

RUN apk update && apk upgrade \
	&& apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

COPY ./telegraf.conf /etc/