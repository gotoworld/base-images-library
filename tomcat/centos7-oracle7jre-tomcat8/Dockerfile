# Pull base centos:7
FROM 192.168.254.245/base/java:centos-oracle-7-jre

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

# Environment 
ENV CATALINA_HOME /opt/tomcat 
ENV PATH $PATH:$CATALINA_HOME/bin
ENV TOMCAT_VERSION_MAJOR 8
ENV TOMCAT_VERSION_FULL  8.5.9

# RUN  tomcat Download & Install
RUN wget http://mirrors.hust.edu.cn/apache/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION_FULL}/bin/apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz && \
 tar -xvf apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz && \
 rm apache-tomcat*.tar.gz && \
 mv apache-tomcat* ${CATALINA_HOME}

# Create tomcat user
RUN groupadd -r tomcat && \
 useradd -g tomcat -d ${CATALINA_HOME} -s /sbin/nologin  -c "Tomcat user" tomcat && \
 chown -R tomcat:tomcat ${CATALINA_HOME}

# WORKDIR SETING
WORKDIR ${CATALINA_HOME}

# EXPOSE port
EXPOSE 8080 8009

# Launch Tomcat on startup
USER tomcat
ENTRYPOINT ["catalina.sh","run"]	