#!/bin/bash

docker run -p 80:80 -p 4567:4567 --name nginx_webapp -v $PWD/webapp:/opt/webapp ayubmalik/nginx_webapp
