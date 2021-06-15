#!/bin/bash

#Este bash es para realizar el proceso de creacion de imagen, borrar, crear y correr un contenedor, 
#y verificar si esta corriendo despues de 5 sec

clear
docker build -t apache .
docker rm -fv apache
docker run -d --name apache -p 80:80 apache
sleep 5
#clear
docker ps