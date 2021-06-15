#1 Capa: SO
FROM centos:8

#2 Capa: Instalacion de programas
#-y: Es para decir que si a todo
RUN yum install httpd -y

#Dirección donde estamos trabajando
WORKDIR /var/www/html

COPY startbootstrap-freelancer-master .
#ADD startbootstrap-freelancer-master /var/www/html

#De esta forma se crean variables y pueden ser utilizadas
ENV contenido pruebassss
RUN echo "$contenido" > ./prueba.html

#Ejecutar el servicio de Apache en 1 plano
CMD apachectl -DFOREGROUND