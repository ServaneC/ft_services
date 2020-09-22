FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add openssl vsftpd bash --no-cache

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj /C=FR/ST=IDF/L=Paris/O=42/CN=schene/ \
    -keyout /etc/ssl/private/vsftpd_key.pem -out /etc/ssl/certs/vsftpd_crt.pem

COPY ftps.sh .
RUN chmod +x ./ftps.sh

EXPOSE 21 30000

VOLUME /mnt/ftps-data

ENTRYPOINT ./ftps.sh