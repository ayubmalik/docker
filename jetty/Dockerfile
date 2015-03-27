FROM ubuntu:14.04
MAINTAINER Ayub Malik ayub.malik@gmail.com

RUN \
  cd /tmp && echo "in $PWD"
RUN \
  apt-get update && apt-get install -yq curl wget
RUN \
  wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz

ENV REFRESHED_AT 2015-01-01

EXPOSE 8080
ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D", "FOREGROUND"]

