# Create default user
mysql -e "create user 'alura_mysql'@'%' identified by 'alura_mysql_2021';"
# Setting up IP address to remote conection and restart the service
cat /mysql_config/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql restart
echo Done!
