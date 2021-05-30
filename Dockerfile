#----------------------------------------------------------------------
#Dockerfile to build Docker Image of Apache WebServer running on Ubuntu
#
#Made by StatAlex 22.05.2021
#----------------------------------------------------------------------

FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y install apache2

ADD https://github.com/Stat-Alex/myproject1/blob/2d59a0b11cfe8babfdac8be1789bcc0a2ff2a68d/index.html \
/var/www/html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80


