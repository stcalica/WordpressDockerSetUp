cd ./backup

date=$(date "+%F") 
sqlpasswd=p0kem0n2468Y 


docker run --rm --volumes-from edgeofrevolt_wordpress_1 -v $(pwd):/backup wordpress tar zcvf /backup/edgeofrevolt_wordpress_$date.tar.gz /var/www/html

docker exec -i edgeofrevolt_db_1 mysqldump -uroot -p$sqlpasswd wordpress > edgeofrevolt_mysql_$date.sql


