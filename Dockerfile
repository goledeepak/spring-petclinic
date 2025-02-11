FROM openjdk:17-oracle
WORKDIR /app
EXPOSE 8080
COPY target/spring-petclinic-3.2.0-SNAPSHOT.jar ./spring-petclinic-3.2.0-SNAPSHOT.jar
CMD ["java", "-Dspring.profiles.active=mysql", "-jar", "/app/spring-petclinic-3.2.0-SNAPSHOT.jar"]
