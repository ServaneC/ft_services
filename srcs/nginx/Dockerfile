FROM alpine:3.12.0

RUN apk update && apk add nginx openssl --no-cache 

COPY index.html /var/www/index.html

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj /C=FR/ST=IDF/L=Paris/O=42/CN=schene/ \
    -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

ENTRYPOINT nginx