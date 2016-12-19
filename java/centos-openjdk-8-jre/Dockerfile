# centos7 + OpenJDK8
# Pull base centos:7
FROM centos:7

# MAINTAINER
MAINTAINER uname.chen <uname.chen@gmail.com>

# Environment
ENV JAVA_VERSION 1.8.0

# RUN  Oracle JDK8 Download & Install
RUN yum update -y && \
yum install -y wget && \
yum install -y tar && \
yum install -y java-$JAVA_VERSION-openjdk && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]