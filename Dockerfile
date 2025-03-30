# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Install OpenJDK
RUN apt-get update && apt-get install -y openjdk-21-jdk

# Set the working directory in the container
# WORKDIR /app

# Copy the application JAR file into the container
COPY target/docker-task-0.0.1-SNAPSHOT.jar /app/docker-task.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/docker-task.jar"]