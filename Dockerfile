#it is a running version- 1
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY pom.xml .
#COPY src src
RUN mvn clean package

COPY fa1/*.jar fa1.jar
CMD ["java", "-jar", "fa1.jar"]












#it is a running version- 2
#FROM openjdk:17-jdk-slim
#ARG JAR_FILE=fa1/*.jar
#COPY ${JAR_FILE} fa1.jar
#USER root
#RUN apt-get update && apt-get install -y maven
#USER jenkins
#ENTRYPOINT ["java","-jar","fa1.jar"]

 

#docker build -t tuto .

#docker run -p 8081:7418 --name myDockerDisplayName1 tuto
#docker run -p 8082:7418 --name myDockerDisplayName2 tuto  
