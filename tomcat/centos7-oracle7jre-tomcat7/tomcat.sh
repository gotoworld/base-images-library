#!/bin/bash

echo "begining"
if [ ! -f ${CATALINA_HOME}/scripts/.tomcat_admin_created ]; then
    echo "tomcat_admin not yet created, begin to start tomcat"
	${CATALINA_HOME}/scripts/create_admin_user.sh
	echo "start tomcat user created"
fi

echo "begin start tomcat"		
exec catalina.sh run
