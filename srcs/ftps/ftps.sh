#! /bin/sh

adduser -D -h /var/ftp $FTP_USERNAME
echo "$FTP_USERNAME:$FTP_PASSWORD" | chpasswd
vsftpd /etc/vsftpd/vsftpd.conf