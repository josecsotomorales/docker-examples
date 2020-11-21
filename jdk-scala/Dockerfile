FROM centos:7

# Generic
RUN yum -y update
RUN yum -y install wget

# Java
RUN yum -y install java-11-openjdk.x86_64

# Scala
RUN wget http://downloads.lightbend.com/scala/2.12.12/scala-2.12.12.rpm
RUN yum -y install scala-2.12.12.rpm
RUN rm -f scala-2.12.12.rpm

CMD ["/bin/bash"]