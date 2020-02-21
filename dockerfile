FROM centos.
MAINTAINER chinna127599@gmail.com.
RUN mkdir /opt/tomcat/.
WORKDIR /opt/tomcat.
RUN curl -o http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz
RUN tar xvf apache * tar.gz.
RUN mv apache-tomcat-8.5.51* /opt/tomcat/.
RUN yum install java -y.
RUN java -version.
WORKDIR /opt/tomcat/webapps.
RUN curl -o http://mirrors.jenkins.io/war-stable/latest/jenkins.war 
EXPOSE 8080.
CMD [" /opt/tomcat/bin/catalina.sh","run"]


