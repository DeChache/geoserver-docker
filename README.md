# geoserver-docker

http://geoserver.org/

Creates a basic instance of GeoServer 2.15 with OpenJDK 8

To build the container

docker build -t geoserver .

To Run and experiment with the demo content

docker run -p 8080:8080/tcp geoserver

The navigate to http://localhost:8080/geoserver

This system will have no persistent storage it is meant for demo use only
