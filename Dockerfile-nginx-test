FROM centos:7

MAINTAINER josecsmorales@gmail.com

RUN yum install -y epel-release; yum install -y nginx

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
