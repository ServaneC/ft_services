mysql_install_db --user=$DB_USER --ldata=/var/lib/mysql

# DB_NAME = wordpress / DB_USER = mysql / DB_PASS = pass

:> /tmp/sql
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;" >> /tmp/sql
echo "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" >> /tmp/sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" >> /tmp/sql
echo "FLUSH PRIVILEGES;" >> /tmp/sql

# /usr/bin/mysqld --console --init_file=/tmp/sql
# mysqld --console --init_file=/tmp/sql

supervisord