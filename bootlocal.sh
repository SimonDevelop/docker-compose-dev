#!/bin/bash

mkdir /var/www
mkdir /var/www/docker
cp php/php.ini /var/www/docker/
cp php/index.php /var/www/

mkdir /var/www/docker/nginx
cp nginx/*.conf /var/www/docker/nginx/

chmod -R 775 /var/www
