FROM ubuntu:14.10

MAINTAINER Ayub Malik "ayub.malik@example.com"

# install nginx
ADD apt/nginx.list /etc/apt/sources.list.d/
ADD apt/nginx_signing.key /tmp/

RUN apt-key add /tmp/nginx_signing.key
RUN apt-get update 
RUN apt-get install -y nginx

# install ruby/sinatra
RUN apt-get install -y -q curl ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis temple

# config
ENV REFRESHED_AT 2015-03-01
RUN rm /etc/nginx/conf.d/*.conf
ADD nginx/my_app.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /opt/webapp

EXPOSE 80
EXPOSE 4567

CMD ["/opt/webapp/bin/run"]

