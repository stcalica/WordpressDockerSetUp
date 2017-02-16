cd ./backup

date=$(date "+%F-%T") 

docker run --rm --volumes-from edgeofrevolt_wordpress_1 -v $(pwd):/backup wordpress tar zcvf /backup/edgeofrevolt_wordpress_$date.tar.gz /var/www/html

docker exec -i edgeofrevolt_db_1 mysqldump -uroot -pwordpress wordpress > edgeofrevolt_mysql_$date.sql


