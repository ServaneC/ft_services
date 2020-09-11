FROM alpine:3.12.0

WORKDIR /app

RUN apk update && apk add php7 php7-fpm php7-opcache wget tar --no-cache

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz \
    && tar -xvzf phpMyAdmin-5.0.2-all-languages.tar.gz \
    && rm phpMyAdmin-5.0.2-all-languages.tar.gz \
    && mv phpMyAdmin-5.0.2-all-languages phpmyadmin

EXPOSE 5000

ENTRYPOINT ["tail", "-f", "/dev/null"]