FROM ubuntu:14.10

MAINTAINER Ayub Malik "ayub.malik@example.com"

ENV REFRESHED_AT 2015-03-18

# nginx
ADD apt/nginx.list /etc/apt/sources.list.d/
ADD apt/nginx_signing.key /tmp/
RUN apt-key add /tmp/nginx_signing.key

RUN apt-get update && \
    apt-get install -y nginx
 
ADD nginx/my_app.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf

# ruby/sinatra
RUN apt-get install -y -q curl ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis temple
RUN mkdir -p /opt/webapp

EXPOSE 4567
EXPOSE 80

CMD ["/opt/webapp/bin/run"]

