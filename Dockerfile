FROM tomcat:latest

MAINTAINER Savinov Vladimir "savinov_v@mail.ru"

EXPOSE 8080

RUN rmdir /usr/local/tomcat/webapps/
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps

COPY ./target/ping-pong.war /usr/local/tomcat/webapps/ping-pong.war

CMD ["catalina.sh","run"]
