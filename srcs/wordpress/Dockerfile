FROM alpine:3.12

WORKDIR /tmp

RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session php7-zip --no-cache \
    && mkdir -p /www/tmp && \
	apk add wget nginx

RUN wget https://wordpress.org/wordpress-5.5.1.tar.gz \
    && tar -xvzf wordpress-5.5.1.tar.gz \
    && rm  wordpress-5.5.1.tar.gz \
    && mv wordpress /var/www/wordpress

COPY wp-config.php /var/www/wordpress/

COPY nginx.conf /etc/nginx/nginx.conf

COPY wordpress.sh .
RUN chmod +x ./wordpress.sh

EXPOSE 5050

ENTRYPOINT ./wordpress.sh