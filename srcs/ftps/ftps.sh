#! /bin/sh

# vsftpd /etc/vsftpd/vsftpd.conf
adduser -D -h /var/ftp schene

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf