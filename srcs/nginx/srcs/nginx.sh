#! /bin/sh

# for nginx SSH USER=schene PASS=schene

adduser --disabled-password ${SSH_USERNAME}
echo "${SSH_USERNAME}:${SSH_PASSWORD}" | chpasswd
echo "user = ${SSH_USERNAME} pass = ${SSH_PASSWORD}"

supervisord -c /etc/supervisord.conf