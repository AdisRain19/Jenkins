FROM openjdk:8-jre-alpine
WORKDIR /usr/app
COPY ./target/java-maven-app-*.jar /usr/app/java-maven-app.jar
ENTRYPOINT ["java", "-jar", "/usr/app/java-maven-app.jar"]
