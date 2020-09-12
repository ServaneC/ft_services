FROM alpine:3.12.0

RUN apk update && apk add nginx openssl --no-cache 
#    && touch /var/www/index.html

COPY index.html /var/www/index.html

#  RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#     -subj /'CN=localhost'/ \
#     -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt


ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/conf.d/default.conf

# EXPOSE 80

ENTRYPOINT nginx