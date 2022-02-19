FROM tomcat:jre11-openjdk-buster
LABEL maintainer="Anjaneyulu"
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
