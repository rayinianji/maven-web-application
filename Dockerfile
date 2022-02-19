FROM tomcat:8.0-alpine
LABEL maintainer="Anjaneyulu"
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
EXPOSE 8080
CMD [“catalina.sh”, “run”]
