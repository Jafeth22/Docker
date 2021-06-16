FROM maven:3.5-alpine as builder
#builder = alias

COPY app /app

RUN cd /app && mvn package

FROM openjdk:8-alpine

#Toma la informacion de la imagen construida con anterioridad
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar /opt/app.jar

#Al final, el tamaño de la imagen será más pequeña porque tomará la informacion de lo que ya está evaluado
CMD java -jar /opt/app.jar