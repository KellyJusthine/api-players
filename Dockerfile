FROM openjdk:21-jdk-slim
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean install -DskipTests
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/api-players-0.0.1-SNAPSHOT.jar"]
