# WordpressDockerSetUp
Setup to run a production level Wordpress site 

change the passwords so everything runs okay. 


https://www.loganmarchione.com/2015/03/digitalocean-lemp-wordpress/
--> decent guide on basic configurations
https://magnier.io/docker-wordpress-email  --> in french have to translate
mail --> Got it to work ! cliffs : - install sendmail on container - edit hosts - edit php.ini - edit class-phpmailer.php

in volumes: add:  - ./etc/php.ini:/usr/local/etc/php/php.ini
docker exec -i ID_OF_CONTAINER php --ini
docker ps
docker exec -i ID_OF_CONTAINER bash /location/of/email.sh

 /wp-includes/class-phpmailer.php: 
 
   public $From = 'root@votrevps';
   public $Sender = 'root@votrevps';
   public $Mailer = 'smtp';

email.sh: 
    #!/bin/bash
    line=$(head -n 1 /etc/hosts)
    line2=$(echo $line | awk '{print $2}')
    echo "$line $line2.localdomain" >> /etc/hosts
    service sendmail restart

SSL Let's Encrypt and etc. 
https://github.com/visiblevc/wordpress-starter#introduction



# Wordpress ECommerce Site 
A very general wordpress set up for ecommerce websites

# Wordpress Tube Site 
A very general wordpress set up for tube sites 
