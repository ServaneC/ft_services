FROM alpine:3.12

WORKDIR /tmp/

RUN apk update && apk add --no-cache --upgrade bash \
    && apk add --no-cache grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

COPY srcs/grafana.ini /usr/share/grafana/conf/custom.ini
COPY srcs/datasource.yaml /usr/share/grafana/conf/provisioning/datasources
COPY srcs/dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards
COPY srcs/dashboards /var/lib/grafana/dashboards

COPY srcs/grafana.sh .
RUN chmod +x ./grafana.sh

EXPOSE 3000

ENTRYPOINT ./grafana.sh