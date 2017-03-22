FROM ubuntu:latest
MAINTAINER Venkata Ravuri (venkata.ravuri@gmail.com)

RUN apt-get -y update

#Installs ifconfig
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y wget
RUN apt-get install -y nano
RUN apt-get install -y less
RUN apt-get install -y dos2unix
      
CMD ["/bin/bash"]