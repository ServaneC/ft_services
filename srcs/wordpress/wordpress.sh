#! /bin/sh

# install wordpress with admin user
wp core install \
    --path=/var/www/wordpress \
    --url=172.17.123.1:5050 \
    --title=Wordpress_ft_Services \
    --admin_user=admin \
    --admin_password=pass \
    --admin_email=schene@example.com

# to create some user with different roles
wp user create user1 user1@example.com --role=author --path=/var/www/wordpress
wp user create user2 user2@example.com --role=editor --path=/var/www/wordpress
wp user create user3 user3@example.com --role=subscriber --path=/var/www/wordpress
wp user create user4 user4@example.com --role=contributor --path=/var/www/wordpress

supervisord