FROM alpine:3.12.0

#WORKDIR /tmp

RUN apk update && apk add --no-cache openrc vsftpd lftp

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN mkdir /srv/ftps
RUN chown -R nobody:nogroup /srv/ftps
RUN echo "schene" > /srv/ftps/user.txt

RUN rc-service vsftpd condrestart
RUN rc-update add vsftpd

EXPOSE 21

ENTRYPOINT ["tail", "-f", "/dev/null"]