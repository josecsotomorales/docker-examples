FROM centos:7

# Generic
RUN yum -y update
RUN yum -y install wget
RUN yum -y install curl

# Java
RUN curl -O https://download.java.net/java/GA/jdk14/076bab302c7b4508975440c56f6cc26a/36/GPL/openjdk-14_linux-x64_bin.tar.gz
RUN tar xvf openjdk-14_linux-x64_bin.tar.gz && mv jdk-14 /opt/ && rm -f openjdk-14_linux-x64_bin.tar.gz
ENV JAVA_HOME /opt/jdk-14
ENV PATH $PATH:$JAVA_HOME/bin

# Scala
RUN wget http://downloads.lightbend.com/scala/2.12.12/scala-2.12.12.rpm
RUN yum -y install scala-2.12.12.rpm
RUN rm -f scala-2.12.12.rpm

CMD ["/bin/bash"]