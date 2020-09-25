FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-zip --no-cache \
    && mkdir -p /www/tmp && \
	apk add wget nginx

RUN mkdir -p /run/nginx

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz \
    && tar -xvzf phpMyAdmin-5.0.2-all-languages.tar.gz \
    && rm phpMyAdmin-5.0.2-all-languages.tar.gz \
    && mv phpMyAdmin-5.0.2-all-languages  phpmyadmin \
    && mv phpmyadmin /var/www/html/ 


COPY config.inc.php /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf

# RUN adduser -D -g 'www' www

COPY phpmyadmin.sh .
RUN chmod +x ./phpmyadmin.sh

EXPOSE 5000

ENTRYPOINT ./phpmyadmin.sh