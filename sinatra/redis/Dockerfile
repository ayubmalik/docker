FROM ubuntu:14.04
MAINTAINER Ayub Malik "ayub.malik@gmail.com"
RUN apt-get update
RUN apt-get -y install redis-server redis-tools

ENV REFRESHED_AT 2014-06-01
EXPOSE 6379
ENTRYPOINT [ "/usr/bin/redis-server" ]
CMD []

