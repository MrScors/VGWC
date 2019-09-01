FROM openjdk:8
ADD target/VGWC.jar VGWC.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "VGWC.jar"]