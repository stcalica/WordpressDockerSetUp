cd ./backup 

docker run --rm --volumes-from edgeofrevolt_wordpress_1 -v $(pwd):/backup wordpress tar zcvf /backup/edgeofrevolt_wordpress.tar.gz /var/www/html

docker exec -i edgeofrevolt_db_1 mysqldump -uroot -pwordpress wordpress > edgeofrevolt_mysql.sql


