FROM alpine:3.12.0

# RUN apk update && apk add vsftpd openssl --no-cache 

RUN apk upgrade update && apk add openssl vsftpd bash --no-cache

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN mkdir /srv/ftp
RUN chown nobody:nogroup /srv/ftp
RUN  echo "anon" | tee /srv/ftp/anon.txt

# RUN apk add jq curl
ENV API_URL=https://kubernetes
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj /C=FR/ST=IDF/L=Paris/O=42/CN=schene/ \
    -keyout /etc/ssl/private/vsftpd_key.pem -out /etc/ssl/certs/vsftpd_crt.pem

RUN cat /etc/ssl/private/vsftpd_key.pem > /etc/vsftpd/vsftpd.pem \
    && cat /etc/ssl/certs/vsftpd_crt.pem >> /etc/vsftpd/vsftpd.pem

RUN mkdir -p /var/ftp

COPY ftps.sh .
RUN chmod +x ./ftps.sh
RUN mkdir /schene

# EXPOSE 21

EXPOSE 20 21 30000

ENTRYPOINT ./ftps.sh
# ENTRYPOINT tail -f /dev/null