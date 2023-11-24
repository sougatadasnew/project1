#Select docker container mave is required here
FROM maven:latest
# Copy source code including pom.xml file in new container
COPY ./ ./
# Run maven to build jar file
RUN mvn clean package
#Give the startup command which will run application during starting of container
CMD ["java", "-jar", "target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]

