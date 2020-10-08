#! /bin/sh

adduser -D -h /var/ftp $FTP_USERNAME
echo "$FTP_USERNAME:$FTP_PASSWORD" | chpasswd

mkdir -p /var/ftp/dir
echo "this is a file" > /var/ftp/dir/file

supervisord -c /etc/supervisord.conf