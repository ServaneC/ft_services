FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add --no-cache tar wget

RUN wget https://dl.grafana.com/oss/release/grafana-7.1.5.linux-amd64.tar.gz \
    && tar -zxvf grafana-7.1.5.linux-amd64.tar.gz \
    && rm grafana-7.1.5.linux-amd64.tar.gz \
    && mv grafana-7.1.5 grafana

EXPOSE 3000

ENTRYPOINT ["tail", "-f", "/dev/null"]