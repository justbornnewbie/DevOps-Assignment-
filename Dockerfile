FROM tomcat:jdk8-corretto
COPY /root/nginx/sample.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]