FROM alpine:3.12.0

RUN apk update && apk add nginx openssl tar curl openrc --no-cache

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
   -subj /'CN=localhost'/ \
   -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt

COPY nginx.conf /etc/nginx/conf.d/default.conf

#RUN rc-service nginx start

EXPOSE 80 443