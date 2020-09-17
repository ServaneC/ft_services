#! /bin/sh

sed s/__GRAF_USER__/$GRAF_USER/g /usr/share/grafana/conf/custom.ini -i
sed s/__GRAF_PASS__/$GRAF_PASS/g /usr/share/grafana/conf/custom.ini -i

cd /usr/share/grafana/conf
grafana-server

telegraf --config /etc/telegraf.conf