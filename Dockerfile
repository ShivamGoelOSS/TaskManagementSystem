# Use Eclipse Temurin 11 as base image
FROM eclipse-temurin:11-jdk

# Set working directory
WORKDIR /app

# Copy the JAR file
COPY target/taskmanager-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]