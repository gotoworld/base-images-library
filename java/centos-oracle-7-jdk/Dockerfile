# Pull base centos:7
FROM centos:7

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

# Environment
ENV JAVA_VERSION 7u80
ENV BUILD_VERSION b15

# RUN  Oracle JDK7 Download & Install
RUN yum update -y && \
yum install -y wget && \
yum install -y tar && \
wget --no-cookies --no-check-certificate \
  --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
   "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm" && \
yum localinstall -y jdk-$JAVA_VERSION-linux-x64.rpm && \
rm -f jdk-$JAVA_VERSION-linux-x64.rpm && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]