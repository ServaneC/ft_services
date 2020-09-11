FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add --no-cache mysql mysql-client \
    &&   rm -f /var/cache/apk/*

COPY setup_mysql.sh ./setup_mysql.sh
RUN chmod +x ./setup_mysql.sh

ENTRYPOINT sh ./setup_mysql.sh