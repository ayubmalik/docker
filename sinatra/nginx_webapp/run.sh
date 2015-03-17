#!/bin/bash

docker run -P --name nginx_webapp -v $PWD/webapp:/opt/webapp ayubmalik/nginx_webapp
