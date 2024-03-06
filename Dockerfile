FROM maven:3.8.3-openjdk-17 AS build
COPY . . 
RUN mvn clean package -DskipTests

FROM openjdk:17.0.2-jdk-slim
COPY --from=build /target/transperfectProba-0.0.1-SNAPSHOT.jar transperfectProba.jar
EXPOSE 8091
ENTRYPOINT [ "java","-jar","transperfectProba.jar" ]