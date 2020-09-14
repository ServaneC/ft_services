FROM alpine:3.12.0

# RUN apk update && apk add vsftpd openssl --no-cache 

# COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

# RUN mkdir /srv/ftps
# RUN chown -R nobody:nogroup /srv/ftps
# RUN echo "schene" > /srv/ftps/user.txt

# EXPOSE 21

#ENTRYPOINT vsftpd


RUN apk upgrade update && apk add openssl vsftpd bash --no-cache
RUN apk add jq curl
ENV API_URL=https://kubernetes
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=NL/ST=Noord-Holland/O=Codam/CN=Peer de Bakker' -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt
RUN mkdir -p /var/ftp

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY setup.sh /tmp/
RUN chmod +x /tmp/setup.sh
RUN mkdir /schene

EXPOSE 20 21 30000

ENTRYPOINT ["/tmp/setup.sh"]

