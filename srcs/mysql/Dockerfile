FROM alpine:3.12

WORKDIR /tmp

RUN apk update && apk add --no-cache mysql mysql-client

COPY my.cnf /etc/

COPY setup_mysql.sh ./setup_mysql.sh
RUN chmod +x ./setup_mysql.sh

EXPOSE 3306

VOLUME /var/lib/mysql

ENTRYPOINT ./setup_mysql.sh