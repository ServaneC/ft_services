mysql_install_db --verbose --user=mysql --ldata=/var/lib/mysql --tmpdir=/tmp

# DB_NAME = wordpress / DB_USER = mysql / DB_PASS = pass

:> /tmp/sql
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;" >> /tmp/sql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" >> /tmp/sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> /tmp/sql
echo "FLUSH PRIVILEGES;" >> /tmp/sql

supervisord -c /etc/supervisord.conf