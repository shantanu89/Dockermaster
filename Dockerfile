FROM openjdk:8-jdk
COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service/src
WORKDIR /usr/local/service
RUN mvn package
CMD ["java","-jar","target/docker-service-1.0-SNAPSHOT-jar-with-dependencies.jar"]
