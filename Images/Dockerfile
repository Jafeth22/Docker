#1 Capa: SO
FROM centos:8

LABEL version=1.0
LABEL description="This is an apache image"
LABEL vendor=yo

#2 Capa: Instalacion de programas
#-y: Es para decir que si a todo
RUN yum install httpd -y

#Dirección donde estamos trabajando
#WORKDIR /var/www/html

COPY startbootstrap-freelancer-master /var/www/html
#ADD startbootstrap-freelancer-master /var/www/html

RUN echo "$(whoami)" > /var/www/html/user1.html

#Agrega un nuevo usuario
RUN useradd jafeth

#cambia al usuario nuevo
USER jafeth

RUN echo "$(whoami)" > /tmp/user2.html

#vuelve a cambiar al usuario root
USER root

#copia el archivo
RUN cp /tmp/user2.html /var/www/html/user2.html

#De esta forma se crean variables y pueden ser utilizadas
ENV contenido pruebassss
RUN echo "$contenido" > /var/www/html/prueba.html

#Ejecutar el servicio de Apache en 1 plano
#CMD apachectl -DFOREGROUND
COPY run.sh /run.sh
#RUN chmod 744 run.sh
CMD sh /run.sh