FROM alpine:3.12

WORKDIR /tmp

RUN apk update && apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-phar php7-mbstring php7-json php7-session php7-zip --no-cache \
    && mkdir -p /www/tmp \
	&& apk add curl wget nginx supervisor --no-cache \
    && mkdir -p /run/nginx

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  
RUN chmod +x wp-cli.phar  
RUN mv wp-cli.phar /usr/local/bin/wp

# RUN wget https://wordpress.org/wordpress-5.5.1.tar.gz \
#     && tar -xvzf wordpress-5.5.1.tar.gz \
#     && rm  wordpress-5.5.1.tar.gz \
#     && mv wordpress /var/www/wordpress
    # && rm /var/www/wordpress/wp-admin/install.php

RUN wp core download --path=/var/www/wordpress

COPY wp-config.php /var/www/wordpress/
# COPY install.php /var/www/wordpress/wp-admin/install.php

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/supervisord.conf

COPY wordpress.sh .
RUN chmod +x ./wordpress.sh

EXPOSE 5050

ENTRYPOINT ./wordpress.sh