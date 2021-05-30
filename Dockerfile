#----------------------------------------------------------------------
#Dockerfile to build Docker Image of Apache WebServer running on Ubuntu
#
#Made by StatAlex 22.05.2021
#----------------------------------------------------------------------

#Установка образа Ubuntu:18.04
FROM ubuntu:18.04

#Выполнение обновления и установка webserver apache2
RUN apt-get -y update && apt-get -y install apache2

#Копирование файла с GitHub и создание файла index.html
ADD https://raw.githubusercontent.com/Stat-Alex/myproject1/main/index.html \
/var/www/html/index.html

#Изменение прав доступа к файлу
RUN chmod 644 /var/www/html/index.html

#Запуск apache при каждом перезапуске сервера
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]

#Открытие порта 
EXPOSE 80


