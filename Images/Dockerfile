#1 Capa: SO
FROM centos:8

#2 Capa: Instalacion de programas
#-y: Es para decir que si a todo
RUN yum install httpd -y

#Ejecutar el servicio de Apache en 1 plano
CMD apachectl -DFOREGROUND