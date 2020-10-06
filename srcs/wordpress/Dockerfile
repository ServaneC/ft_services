FROM alpine:3.12

WORKDIR /tmp

RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-phar php7-mbstring php7-json php7-session php7-zip --no-cache \
    && mkdir -p /www/tmp \
	&& apk add curl wget nginx supervisor --no-cache \
    && mkdir -p /run/nginx

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY wp-config.php /var/www/wordpress/
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/supervisord.conf

COPY wordpress.sh .
RUN chmod +x ./wordpress.sh

EXPOSE 5050

ENTRYPOINT ./wordpress.sh