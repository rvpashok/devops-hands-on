FROM amazoncorretto:11-alpine3.14
WORKDIR D:/var
ADD C:/ProgramData/Jenkins/.jenkins/workspace/FirstPipeline_main/target/devops-hands-on-1.0.0-SNAPSHOT-shaded.jar
COPY ./devopsservice.jar
ENTRYPOINT ["java", "-jar", "D:/var/lib/devopsservice.jar"]