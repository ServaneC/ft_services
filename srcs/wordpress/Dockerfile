FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add php7 php7-fpm php7-opcache wget tar --no-cache

RUN wget https://wordpress.org/wordpress-5.5.1.tar.gz \
    && tar -xvzf wordpress-5.5.1.tar.gz \
    && rm  wordpress-5.5.1.tar.gz

EXPOSE 5050

ENTRYPOINT ["tail", "-f", "/dev/null"]