FROM alpine:3.12.0

RUN apk update && apk add --no-cache mysql mysql-client \
    &&   rm -f /var/cache/apk/*

ENTRYPOINT ["tail", "-f", "/dev/null"]