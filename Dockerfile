FROM eclipse-temurin:25 AS build

WORKDIR /src

COPY .mvn .mvn
COPY mvnw pom.xml ./
COPY src src

RUN chmod +x mvnw && ./mvnw -B -DskipTests package

FROM eclipse-temurin:25

WORKDIR /opt/app

COPY --from=build --chown=1000:1000 /src/target/test_golden_path-*.jar /opt/app/japp.jar

USER 1000

EXPOSE 8081

CMD ["java", "-jar", "/opt/app/japp.jar"]
