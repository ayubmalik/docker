FROM ubuntu:14.04
MAINTAINER Ayub Malik "ayub.malik@example.com"
ENV REFRESHED_AT 2014-03-03

RUN apt-get update

# nginx
RUN apt-get -y -q install nginx curl
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf

# ruby/sinatra
RUN apt-get -y -q install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis temple
RUN mkdir -p /opt/webapp

EXPOSE 9292

