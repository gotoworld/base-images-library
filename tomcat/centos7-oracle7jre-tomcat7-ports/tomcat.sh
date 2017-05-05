#!/bin/bash

echo "begining"
if [ ! -f ${CATALINA_HOME}/scripts/.tomcat_admin_created ]; then
    echo "tomcat_admin not yet created, begin to start tomcat"
	${CATALINA_HOME}/scripts/create_admin_user.sh
	echo "start tomcat user created"
fi

echo "update the ports"
 sed -i "s/8080/${TOMCAT_PORT}/g" ${CATALINA_HOME}/conf/server.xml 
 sed -i "s/8009/${AJP_PORT}/g" ${CATALINA_HOME}/conf/server.xml

echo "begin start tomcat"		
exec catalina.sh run
