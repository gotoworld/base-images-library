#!/bin/sh

## variable define
DISCONF_PATH='/opt/webapp/WEB-INF/classes/disconf.properties'
if [ $CONFIG_FILE ];then
    echo "DISCONF_PATH = $CONFIG_FILE"
fi

## disconf ENV settings
# disconf host
if [ -z $CONFIG_H ];then
   cat $DISCONF_PATH | grep 'conf_server_host='
else
    echo "user define conf_server_host: "$CONFIG_H
    sed -i "s/conf_server_host=.*/conf_server_host=$CONFIG_H/g" $DISCONF_PATH
fi

# config version
if [ -z $CONFIG_V ];then
   cat $DISCONF_PATH | grep 'version='
else
    echo "user define version: "$CONFIG_V
    sed -i "s/version=.*/version=$CONFIG_V/g" $DISCONF_PATH
fi

# config name
if [ -z $CONFIG_APP ];then
   cat $DISCONF_PATH | grep 'app='
else
    echo "user define app: "$CONFIG_APP
    sed -i "s/app=.*/app=$CONFIG_APP/g" $DISCONF_PATH
fi

# local download dir (cache use)
if [ -z $CONFIG_DIR ];then
   cat $DISCONF_PATH | grep 'user_define_download_dir='
else
    echo "user define user_define_download_dir: "$CONFIG_DIR
    sed -i "s/user_define_download_dir=.*/user_define_download_dir=$CONFIG_DIR/g" $DISCONF_PATH
fi

## Execute Command
catalina.sh run