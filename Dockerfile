#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
#COPY --from=build /home/app/target/spring-boot-example-0.0.1-SNAPSHOT.war /usr/local/lib/spring-boot-example-0.0.1-SNAPSHOT.war
COPY spring-boot-example-0.0.1-SNAPSHOT.war app.war
RUN rm -rf /home/app
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]
#
