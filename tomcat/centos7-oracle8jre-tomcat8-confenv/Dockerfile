# base centos:7
FROM hub.heshidai.com/base/java/centos-oracle-8-jre

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

# Environment 
ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin
ENV TOMCAT_VERSION_MAJOR 8
ENV TOMCAT_VERSION_FULL  8.5.16

#
ADD entrypoint.sh $CATALINA_HOME/bin/entrypoint.sh

# RUN  tomcat Download & Install
RUN wget http://mirrors.hust.edu.cn/apache/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION_FULL}/bin/apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz && \
 tar -xvf apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz && \
 rm apache-tomcat*.tar.gz && \
 mv apache-tomcat* ${CATALINA_HOME}  && \
 rm -rf $CATALINA_HOME/webapps/* && \
 mkdir /opt/webapp/ && \
 groupadd -r tomcat && \
 useradd -g tomcat -d ${CATALINA_HOME} -s /sbin/nologin  -c "Tomcat user" tomcat && \
 chown -R tomcat:tomcat ${CATALINA_HOME}

#optimazation
ADD server.xml  ${CATALINA_HOME}/conf/server.xml

# WORKDIR SETING
WORKDIR ${CATALINA_HOME}

# EXPOSE port
EXPOSE 8080 8009

# Launch Tomcat on startup
CMD ["catalina.sh","run"]