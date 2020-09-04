openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
   -subj /C=FR/ST=IDF/L=Paris/O=42/CN=schene/ \
   -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt

curl https://nginx.org/download/nginx-1.18.0.tar.gz
tar zxf nginx-1.18.0.tar.gz
rm -rf nginx-1.18.0.tar.gz
#rm nginx-1.18.0/conf/nginx.conf
#mv nginx.conf nginx-1.18.0/conf/
cp -r nginx-1.18.0 /app/
nginx start