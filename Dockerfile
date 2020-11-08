FROM jenkins/jenkins:2.265

USER root

# install JDK
RUN apt-get update && apt-get install -y make git openjdk-8-jdk
RUN mkdir /srv/backup && chown jenkins:jenkins /srv/backup
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# install Docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh

# install Maven
RUN apt install maven -y
RUN wget http://mirror.vorboss.net/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp
RUN tar xf /tmp/apache-maven-*.tar.gz -C /opt
RUN ln -s /opt/apache-maven-3.6.3 /opt/maven
RUN export JAVA_HOME=/usr/lib/jvm/default-java
RUN export M2_HOME=/opt/maven
RUN export MAVEN_HOME=/opt/maven
RUN export PATH=${M2_HOME}/bin:${PATH}

EXPOSE 9000
EXPOSE 8080