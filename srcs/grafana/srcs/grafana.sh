#! /bin/sh

# GRAF_USER=schene GRAF_PASS=schene42

sed s/__GRAF_USER__/$GRAF_USER/g /usr/share/grafana/conf/custom.ini -i
sed s/__GRAF_PASS__/$GRAF_PASS/g /usr/share/grafana/conf/custom.ini -i

supervisord -c /etc/supervisord.conf