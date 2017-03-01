# WordpressDockerSetUp
Setup to run a production level wordpress site 



change the passwords so everything runs okay. 



https://www.loganmarchione.com/2015/03/digitalocean-lemp-wordpress/
--> decent guide on basic configurations


https://magnier.io/docker-wordpress-email  --> in french have to translate
mail --> Got it to work ! cliffs : - install sendmail on container - edit hosts - edit php.ini - edit class-phpmailer.php

in volumes: add:  - ./etc/php.ini:/usr/local/etc/php/php.ini

docker exec -i ID_OF_CONTAINER php --ini


docker ps
docker exec -i ID_OF_CONTAINER bash /location/of/email.sh


 /wp-includes/class-phpmailer.php!
public $From = 'root@votrevps';
public $Sender = 'root@votrevps';
public $Mailer = 'smtp';
