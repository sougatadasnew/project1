#!/bin/bash

# Stop the existing Spring Boot application
sudo systemctl stop spring-boot-2-hello-world-1.0.2
#Create a folder for application
sudo mkdir /tmp/appdelploy
# Copy the new JAR file from Jenkins workspace to the deployment directory
#cp /path/to/your/jenkins/workspace/test/target/your-application.jar /home/sysadmin/springbootapp
sudo cp /var/lib/jenkins/workspace/project10/target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar /tmp/appdeploy

# Start the Spring Boot application
sudo java -jar spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar
