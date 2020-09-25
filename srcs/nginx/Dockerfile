FROM alpine:3.12

WORKDIR /tmp/

RUN apk update && apk add nginx openssl --no-cache 

COPY srcs/index.html /var/www/localhost/htdocs/index.html

RUN adduser -D -g 'www' www && \
	mkdir /www && \
	chown -R www:www /var/lib/nginx && \
	chown -R www:www /www && \
	mkdir -p /run/nginx

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj /C=FR/ST=IDF/L=Paris/O=42/CN=schene/ \
    -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt

COPY srcs/nginx.conf /etc/nginx/nginx.conf

COPY srcs/nginx.sh .
RUN chmod +x nginx.sh

EXPOSE 80 443

ENTRYPOINT ./nginx.sh