FROM tomcat:8.0
MAINTAINER adiseshu
COPY **/target/*.war /usr/local/tomcat/webapps/webapp.war
