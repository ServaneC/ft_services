FROM alpine:3.12

WORKDIR /tmp

RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-zip --no-cache \
    && mkdir -p /www/tmp && \
	apk add wget nginx



RUN wget  http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz \
    && tar -xvzf phpMyAdmin-5.0.2-all-languages.tar.gz \
    && rm phpMyAdmin-5.0.2-all-languages.tar.gz \
    && mv phpMyAdmin-5.0.2-all-languages  phpmyadmin \
    && mv phpmyadmin /var/www/phpmyadmin


COPY config.inc.php /var/www/phpmyadmin
COPY nginx.conf /etc/nginx/nginx.conf

COPY phpmyadmin.sh .
RUN chmod +x ./phpmyadmin.sh

EXPOSE 5000

ENTRYPOINT ./phpmyadmin.sh