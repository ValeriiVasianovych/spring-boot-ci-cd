FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/*.jar app.jar

COPY . .

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]