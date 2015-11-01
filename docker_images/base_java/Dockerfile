FROM ubuntu:14.04

MAINTAINER Michal Dec <michaldec@gmail.com>

# utils
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y vim

# Java
RUN curl -L -b "oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/jdk-8u31-linux-x64.tar.gz > /tmp/jdk.tar.gz
RUN mkdir -p /usr/lib/java
RUN tar -xvzf /tmp/jdk.tar.gz -C /usr/lib/java
RUN ln -s /usr/lib/java/jdk1.8.0_31/bin/java /usr/bin/java
RUN rm /tmp/jdk.tar.gz

# envs
RUN echo 'export JAVA_HOME=/usr/lib/java/jdk1.8.0_31' >> ~/.bash_profile
RUN echo 'export PATH=/usr/lib/java/jdk1.8.0_31/bin:$PATH' >> ~/.bash_profile

ADD run-app.sh /opt/application/run-app.sh
RUN chmod +x /opt/application/run-app.sh

CMD ["/opt/application/run-app.sh"]