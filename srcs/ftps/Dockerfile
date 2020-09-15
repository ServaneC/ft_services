FROM alpine:3.12.0

# RUN apk update && apk add vsftpd openssl --no-cache 

# COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

# RUN mkdir /srv/ftps
# RUN chown -R nobody:nogroup /srv/ftps
# RUN echo "schene" > /srv/ftps/user.txt

# EXPOSE 21

#ENTRYPOINT vsftpd


RUN apk upgrade update && apk add openssl lftp vsftpd openrc bash --no-cache

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN mkdir /srv/ftp
RUN chown nobody:nogroup /srv/ftp
RUN  echo "anon" | tee /srv/ftp/anon.txt

RUN rc-service vsftpd condrestart
RUN rc-update add vsftpd

# RUN apk add jq curl
# ENV API_URL=https://kubernetes
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=NL/ST=Noord-Holland/O=Codam/CN=Peer de Bakker' -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt
# RUN mkdir -p /var/ftp



# COPY setup.sh /tmp/
# RUN chmod +x /tmp/setup.sh
# RUN mkdir /schene

EXPOSE 21

# EXPOSE 20 21 30000

# ENTRYPOINT ["/tmp/setup.sh"]
ENTRYPOINT tail -f /dev/null
