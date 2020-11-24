FROM ubuntu:20.04

# Generic
RUN apt-get -y update \
 && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata \
 && apt-get -y install python3-pip \
 && apt-get -y install wget \
 && apt-get -y install curl \
 && apt-get -y install jq 

# AWS CLI
RUN pip3 install --upgrade pip && pip3 install awscli --upgrade --ignore-installed six

# JDK
RUN curl -O https://download.java.net/java/GA/jdk14/076bab302c7b4508975440c56f6cc26a/36/GPL/openjdk-14_linux-x64_bin.tar.gz \
 && tar xvf openjdk-14_linux-x64_bin.tar.gz && mv jdk-14 /opt/ \
 && rm -f openjdk-14_linux-x64_bin.tar.gz
ENV JAVA_HOME /opt/jdk-14
ENV PATH $PATH:$JAVA_HOME/bin

# Scala
RUN apt-get -y install default-jdk \
 && wget http://downloads.lightbend.com/scala/2.12.12/scala-2.12.12.deb \
 && dpkg -i scala-2.12.12.deb \
 && rm -f scala-2.12.12.deb

CMD ["/bin/bash"]