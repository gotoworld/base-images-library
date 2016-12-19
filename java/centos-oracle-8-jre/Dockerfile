# Pull base centos:7
FROM centos:7

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

# Environment
ENV JAVA_VERSION 8u102
ENV BUILD_VERSION b14

# RUN  Oracle JDK8 Download & Install
RUN yum update -y && \
yum install -y wget && \
yum install -y tar && \
wget --no-cookies --no-check-certificate \
  --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
   "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jre-$JAVA_VERSION-linux-x64.rpm" && \
yum localinstall -y jre-$JAVA_VERSION-linux-x64.rpm && \
rm -f jre-$JAVA_VERSION-linux-x64.rpm && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]