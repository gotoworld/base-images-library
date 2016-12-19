# Pull base centos:7
FROM 192.168.254.245/base/java:centos-oracle-7-jre

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

# Environment 
ENV CATALINA_HOME /opt/tomcat 
ENV PATH $PATH:$CATALINA_HOME/bin:$CATALINA_HOME/scripts
ENV TOMCAT_VERSION_MAJOR 7
ENV TOMCAT_VERSION_FULL  7.0.73


# RUN  tomcat Download & Install
RUN wget http://mirrors.cnnic.cn/apache/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION_FULL}/bin/apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz && \
 tar -xvf apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz && \
 rm apache-tomcat*.tar.gz && \
 mv apache-tomcat* ${CATALINA_HOME}

RUN chmod +x ${CATALINA_HOME}/bin/*sh

# Create Tomcat admin user
ADD create_admin_user.sh $CATALINA_HOME/scripts/create_admin_user.sh
ADD tomcat.sh $CATALINA_HOME/scripts/tomcat.sh
RUN chmod +x $CATALINA_HOME/scripts/*.sh

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
ENTRYPOINT ["tomcat.sh","run"]	