FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/springboot-application-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
