FROM tomcat
MAINTAINER seshu
COPY target/*.war /usr/local/tomcat/webapps/webapp.war
