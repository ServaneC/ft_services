#! /bin/sh

wp core install --path=/var/www/wordpress --url=172.17.123.4:5050 --title=Wordpress_ft_Services --admin_user=schene --admin_password=pass --admin_email=schene@example.com
# wp user create bob bob@example.com --role=author --path=/var/www/wordpress

supervisord

