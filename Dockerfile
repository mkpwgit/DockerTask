# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
# WORKDIR /app

# Copy the application JAR file into the container
COPY target/docker-task-0.0.1-SNAPSHOT.jar /app/docker-task.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/docker-task.jar"]