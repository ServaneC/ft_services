mysql -u root -e "CREATE DATABASE my_database"
mysql -u root -e "CREATE USER 'schene'@'localhost' IDENTIFIED WITH my_sql_pass BY '42borntocode'"
mysql -u root -e "GRANT ALL PRIVILEGES ON my_database.* TO 'schene'@'localhost' IDENTIFIED BY '42borntocode'"
mysql -u root -e "FLUSH PRIVILEGES"

mysql

tail -f /dev/null