FROM ubuntu:14.04
MAINTAINER Ayub Malik "ayub.malik@example.com"
ENV REFRESHED_AT 2014-03-01

RUN apt-get update
RUN apt-get -y install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis temple

RUN mkdir -p /opt/webapp

EXPOSE 9292

CMD [ "/opt/webapp/bin/webapp" ]
