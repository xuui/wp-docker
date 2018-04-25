#!/bin/sh
#docker pull nginx:alpine
#docker pull nginx:1.13.12
#docker pull nginx
#docker pull php:7.2
#docker pull php:7.2-fpm
#docker pull php

docker container run --rm --name myphp -d -v "$PWD/htmls":/var/www/html -p 9000:9000 php:7.2-fpm

#docker container run -d -p 8080:80 --rm --name mynginx nginx:1.13.12
#docker container run --rm --name mynginx --volume "$PWD/htmls":/usr/share/nginx/html --volume "$PWD/etc/nginx":/etc/nginx -p 80:80 -d nginx:1.13.12
docker container run --rm --name mynginx --volume "$PWD/htmls":/var/www/html --volume "$PWD/etc/nginx":/etc/nginx -p 80:80 -p 443:443 -d --link myphp:myphp nginx:1.13.12

