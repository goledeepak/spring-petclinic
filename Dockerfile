FROM openjdk:17-oracle
WORKDIR /app
EXPOSE 8888
COPY target/spring-petclinic-3.2.0-SNAPSHOT.jar ./spring-petclinic-3.2.0-SNAPSHOT.jar
CMD ["java", "-jar", "/app/spring-petclinic-3.2.0-SNAPSHOT.jar"]

