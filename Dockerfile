#----------------------------------------------------------------------
#Dockerfile to build Docker Image of Apache WebServer running on Ubuntu
#
#Made by StatAlex 22.05.2021
#----------------------------------------------------------------------

From ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Hello world from Docker!!!' > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80


