FROM alpine:3.12

RUN apk update && apk upgrade && apk add --no-cache wget openssl

CMD setup_nginx.sh

EXPOSE 80 443