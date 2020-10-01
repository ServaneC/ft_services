mysql_install_db --user=mysql --ldata=/var/lib/mysql

# DB_NAME = wordpress / DB_USER = mysql / DB_PASS = pass

:> /tmp/sql
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;" >> /tmp/sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" >> /tmp/sql
echo "FLUSH PRIVILEGES;" >> /tmp/sql

/usr/bin/mysqld --console --init_file=/tmp/sql
