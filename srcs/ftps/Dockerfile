FROM alpine:3.12.0

WORKDIR /tmp

RUN apk update && apk add --no-cache openrc vsftpd lftp

COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

RUN mkdir /srv/ftps
RUN chown -R nobody:nogroup /srv/ftps
RUN echo "schene" | tee /srv/ftps/anon.txt

RUN rc-service vsftpd condrestart
RUN rc-update add vsftpd
RUN lftp localhost

#COPY start_ftps.sh ./start_ftps.sh
#RUN chmod +x ./start_ftps.sh
#CMD sh ./start_ftps.sh

EXPOSE 21 21000