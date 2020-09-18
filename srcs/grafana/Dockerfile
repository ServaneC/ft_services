FROM alpine:3.12.0

WORKDIR /tmp/

RUN apk update && apk add --no-cache --upgrade bash \
    && apk add --no-cache grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

COPY grafana.ini /usr/share/grafana/conf/custom.ini
COPY ./datasource.yaml /usr/share/grafana/conf/provisioning/datasources
COPY ./dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards
COPY ./dashboard /var/lib/grafana/dashboards

COPY grafana.sh .

RUN chmod +x ./grafana.sh

EXPOSE 3000

ENTRYPOINT ./grafana.sh


























# COPY ./influxdb.yaml /usr/share/grafana/conf/provisioning/datasources/
# COPY ./dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards/
# COPY ./dashboards /var/lib/grafana/dashboards/

# EXPOSE 3000

# # SUPERVISOR
# COPY ./supervisord.conf /etc/
# RUN mkdir -p /var/log/supervisor/

# COPY ./entrypoint.sh ./
# ENTRYPOINT ./entrypoint.sh
