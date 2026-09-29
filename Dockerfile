FROM eclipse-temurin:25

# Setup application workspace
RUN mkdir /opt/app
WORKDIR /opt/app

# Copy the pre-built executable jar
COPY target/test_golden_path-0.0.1-SNAPSHOT.jar /opt/app/japp.jar

# Run the application
CMD ["java", "-jar", "/opt/app/japp.jar"]