FROM maven:3.9.2-eclipse-temurin-17 AS builder

WORKDIR /app

COPY . /app

RUN mvn clean install package

FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY --from=builder /app/target/*.jar /app/app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]