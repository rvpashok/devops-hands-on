FROM amazoncorretto:11-alpine3.14
ADD C:/ProgramData/Jenkins/.jenkins/workspace/FirstPipeline_main/target/devops-hands-on-1.0.0-SNAPSHOT-shaded.jar D:/var/lib/devopsservice.jar
ENTRYPOINT ["java", "-jar", "/var/lib/devopsservice.jar"]