FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

ENV APP_ENV = "dev"

COPY quiz-app-1.0.0.jar .

EXPOSE 8080

RUN ["java", "-Dspring.profiles.active=dev","-jar", "quiz-app-1.0.0.jar"]