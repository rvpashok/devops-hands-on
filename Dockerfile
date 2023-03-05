FROM amazoncorretto:11-alpine3.14
ADD target/devops-hands-on-1.0.0-SNAPSHOT.jar /var/lib/devopsservice.jar
ENTRYPOINT ["java", "-jar", "/var/lib/devopsservice.jar"]