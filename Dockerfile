# Docker Build Maven Stage
FROM maven:3.6.3-jdk-11 AS build
# Copy folder in docker
WORKDIR /opt/app
COPY ./ /opt/app
RUN mvn clean install -DskipTests
# Run spring boot in Docker
FROM adoptopenjdk/openjdk11:alpine-jre
COPY --from=build /opt/app/target/*.jar app.jar
ENV PORT 8081
EXPOSE $PORT
ENTRYPOINT ["java","-jar","-Dserver.port=${PORT}","app.jar"]
