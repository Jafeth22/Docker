#!/bin/bash

#Este bash es para realizar el proceso de creacion de imagen, borrar, crear y correr un contenedor, 
#y verificar si esta corriendo despues de 5 sec

clear
docker build -t php_apache_tlsssl .
docker rm -fv php_apache
docker run -d --name php_apache -p 443:443 php_apache_tlsssl
sleep 2
#clear
docker ps