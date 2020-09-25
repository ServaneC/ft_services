#! /bin/sh
chown -R www:www /var/lib/nginx
chown -R www:www /www

/usr/sbin/nginx
php-fpm7