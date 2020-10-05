FROM alpine:3.12.0

WORKDIR /tmp

RUN apk upgrade && apk add openssl vsftpd supervisor --no-cache

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj '/C=FR/ST=IDF/L=Paris/O=42/CN=schene/' \
    -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

RUN mkdir -p /var/ftp

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY supervisord.conf /etc/
COPY ftps.sh .
RUN chmod +x ./ftps.sh
RUN mkdir /schene

EXPOSE 20 21 30000

ENTRYPOINT ./ftps.sh
