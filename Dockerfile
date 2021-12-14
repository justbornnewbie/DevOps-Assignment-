FROM tomcat:jdk11-corretto
COPY sample.war /usr/local/tomcat/webapps/
COPY server.xml /usr/local/tomcat/conf/
ADD ssl /usr/local/tomcat/ssl/