#! /bin/sh

adduser -D -h /var/ftp $FTP_USERNAME
echo "$FTP_USERNAME:$FTP_PASSWORD" | chpasswd

mkdir -p /var/ftp/doss
echo "file" > /var/ftp/doss/file

supervisord -c /etc/supervisord.conf