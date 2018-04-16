#!/bin/sh
docker pull nginx:alpine
docker pull nginx:1.13.12
docker pull nginx

docker container run -d -p 8080:80 --rm --name mynginx nginx:1.13.12

