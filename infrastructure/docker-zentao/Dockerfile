# zentao 8.4
#
# VERSION              1.0
FROM centos:7

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

RUN yum update -y && \
yum install -y wget && \
yum install -y tar && \
wget http://dl.cnezsoft.com/zentao/8.4.1/ZenTaoPMS.8.4.1.zbox_64.tar.gz && \
    tar -xvf ZenTaoPMS.8.4.1.zbox_64.tar.gz -C /opt/
	
COPY ./run.sh /
	
ENTRYPOINT ["bash", "run.sh"]
