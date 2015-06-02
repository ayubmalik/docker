# Install nginx latest
FROM centos:7
MAINTAINER "Ayub Malik" <ayub.malik@gmail.com>
ENV container docker

COPY nginx.repo /etc/yum.repos.d/

RUN yum update -y 
RUN yum install -y curl nginx

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]

