FROM maven:3.8-openjdk-17 AS build
WORKDIR /app
COPY code/pom.xml pom.xml
COPY code/src ./src
RUN mvn clean package
RUN mv target/*.jar target/app.jar


FROM openjdk:17
COPY --from=0 /app/target/app.jar /app/emp.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/emp.jar"]


