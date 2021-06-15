#!/bin/bash

clear
docker build -t apache .
docker rm -fv apache
docker run -d --name apache -p 80:80 apache
#clear
docker ps