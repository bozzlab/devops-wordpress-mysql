#!/bin/bash
docker network create -d bridge ever-network
docker volume create db_vol
docker run --name ever-mysql -v db_vol:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1234 --network=ever-network -d mysql:5.7
docker run --name ever-wp -v wordpress_vol:/var/www/html -e WORDPRESS_DB_HOST=ever-mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=1234 -p 8080:80 --network=ever-network -d wordpress:latest