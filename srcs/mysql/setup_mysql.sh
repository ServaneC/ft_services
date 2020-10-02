mysql_install_db --user=mysql --ldata=/var/lib/mysql

# DB_NAME = wordpress / DB_USER = mysql / DB_PASS = pass

# DB_NAME = wordpress / DB_USER = mysql / DB_PASS = pass

:> /tmp/sql
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8 COLLATE utf8_general_ci;" >> /tmp/sql
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" >> /tmp/sql
echo "FLUSH PRIVILEGES;" >> /tmp/sql

/usr/bin/mysqld --console --init_file=/tmp/sql


# # chown -R mysql:mysql /var/lib/mysql

# # /usr/bin/mysqld_safe &

# sleep 5

# mysqld --default-authentication-plugin=mysql_native_password &

# sleep 5

# tmpsql="/tmp/init_sql"
# # mysqladmin -u ${DB_USER} password '${DB_PASSWORD}'
# echo > $tmpsql \
# "CREATE DATABASE IF NOT EXISTS ${DB_NAME};
# CREATE USER IF NOT EXISTS ${DB_USER} IDENTIFIED BY '${DB_PASSWORD}';
# GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';
# FLUSH PRIVILEGES;
# GRANT ALL ON *.* TO '${DB_USER}'@'127.0.0.1' IDENTIFIED BY '${DB_PASSWORD}' WITH GRANT OPTION;
# GRANT ALL ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' WITH GRANT OPTION;
# GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
# GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' WITH GRANT OPTION;
# GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' WITH GRANT OPTION;
# FLUSH PRIVILEGES;"

# if [ ! -f /var/lib/mysql/wpNewUsers ]; then
# 	echo "done" >> /var/lib/mysql/wpNewUsers
# 	mysql -h localhost -e "$(cat $tmpsql)"
# 	mysql -h localhost -e "$(cat ./wordpress.sql)"
# 	mysql -h localhost -e "$(cat ./new_users.sql)"
# fi

# rm -f $tmpsql

# # SET PASSWORD FOR '${DB_USER}'@'%'=PASSWORD('${DB_PASSWORD}');
# # select user, host FROM mysql.user;

<<<<<<< HEAD
# # killall mysqld

=======
# # printf "${red}RED${eoc}\n"

# # killall mysqld

# # printf "${dblue}D BLUE${eoc}\n"

# # printf "${green}GREEN${eoc}\n"

>>>>>>> 575b4836dfe84e0b1f03a5301b63ed1163db2dd8
# /usr/share/mariadb/mysql.server stop