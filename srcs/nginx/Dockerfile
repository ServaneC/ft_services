FROM alpine:3.12

WORKDIR /tmp/

RUN apk update && apk add nginx openssl openssh-server openrc supervisor --no-cache \
    && mkdir -p /run/nginx

RUN ssh-keygen -A

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj /C=FR/ST=IDF/L=Paris/O=42/CN=schene/ \
    -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt

COPY srcs/index.html /var/www/localhost/htdocs/index.html
COPY srcs/nginx.conf /etc/nginx/nginx.conf
COPY srcs/supervisord.conf /etc/supervisord.conf
COPY srcs/sshd_config /etc/ssh/sshd_config

COPY srcs/nginx.sh .
RUN chmod +x nginx.sh

EXPOSE 80 443 22

ENTRYPOINT ./nginx.sh