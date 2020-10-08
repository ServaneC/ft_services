FROM alpine:3.12

WORKDIR /tmp

RUN apk update && apk add --no-cache mariadb mariadb-common mariadb-client supervisor

COPY ./my.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY supervisord.conf /etc/supervisord.conf
COPY setup_mysql.sh ./setup_mysql.sh

RUN chmod +x ./setup_mysql.sh

EXPOSE 3306

VOLUME /var/lib/mysql

ENTRYPOINT ./setup_mysql.sh