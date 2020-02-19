FROM tomcat
MAINTAINER seshu
COPY /var/lib/tomcat8/webapps/*.war /usr/local/tomcat/webapps/webapp.war
