FROM centos:7.6.1810

MAINTAINER Chuck zhangqidonglove@gmail.com

#Time zone control
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# Install required packages
RUN yum update -y
RUN yum install -y curl file  wget curl locales build-essential bzip2 \
    openssl-devel openssl  perl tar make git iproute net-tools vim 


CDM python -m SimpleHTTPServer 80

# Expose port
EXPOSE 80
