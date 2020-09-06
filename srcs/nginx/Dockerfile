FROM alpine:3.12

RUN apk update && apk add nginx openssl tar curl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
   -subj /'CN=localhost'/ \
   -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443