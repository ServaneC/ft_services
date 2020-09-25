#! /bin/sh

export FTP_USERNAME=schene;
export FTP_PASSWORD=pass;

adduser -D -h /var/ftp $FTP_USERNAME
echo "$FTP_USERNAME:$FTP_PASSWORD" | chpasswd
vsftpd /etc/vsftpd/vsftpd.conf