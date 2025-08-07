# Use official OpenJDK base image
FROM openjdk:17-jdk-slim

# Copy jar and run
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8888
ENTRYPOINT ["java", "-jar", "/app.jar"]
