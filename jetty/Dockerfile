FROM ubuntu:14.04
MAINTAINER Ayub Malik ayub.malik@gmail.com
ENV REFRESHED_AT 2015-01-01

RUN apt-get update && apt-get install -yq curl wget

RUN cd /tmp && \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" \
    --progress=dot:mega http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.tar.gz

RUN cd /tmp && \
    wget --no-check-certificate --no-cookies \
    --progress=dot:mega http://download.eclipse.org/jetty/stable-9/dist/jetty-distribution-9.2.10.v20150310.tar.gz

RUN cd /tmp && \
    tar -xvf jdk* && \
    tar -xvf jetty* && \
    rm *.gz && \
    mv * /opt && \ 
    ln -s /opt/jdk* /opt/jdk8 && \
    ln -s /opt/jetty* /opt/jetty && \
    ls -lrt /opt

ENV JAVA_HOME /opt/jdk8
ENV JETTY_HOME /opt/jetty

RUN env

EXPOSE 8080
ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D", "FOREGROUND"]

