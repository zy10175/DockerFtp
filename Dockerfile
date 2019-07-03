#version:0.0.1
FROM centos
MAINTAINER ZhangYu "15548325817@163.com"
RUN yum install -y vsftpd
ADD ftp.sh /tmp/ftp.sh
RUN chmod 666 /tmp/ftp.sh
RUN useradd zy
RUN echo zy:admin | chpasswd
EXPOSE 20 21
EXPOSE 30000-30050
CMD ["/bin/bash","/tmp/ftp.sh"]
