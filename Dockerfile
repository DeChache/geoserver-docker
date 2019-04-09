FROM centos:7

RUN yum update -y && \
        yum -y install \
        epel-release && \
        yum install -y \
        java-1.8.0-openjdk \
        yum install -y \
        wget \
        yum install -y \
        unzip

RUN curl -L  https://sourceforge.net/projects/geoserver/files/GeoServer/2.15.0/geoserver-2.15.0-bin.zip/download -o geoserver.zip

RUN unzip geoserver.zip

EXPOSE 8080/TCP

ENV JAVA_HOME=/
ENV GEOSERVER_HOME=/geoserver-2.15.0/

ENTRYPOINT ./geoserver-2.15.0/bin/startup.sh
