# Use an official Tomcat image
FROM tomcat:9-jdk11-openjdk-slim

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps

# Remove the default Tomcat ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file into the container
COPY target/simple-java-maven-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 to access the application
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
