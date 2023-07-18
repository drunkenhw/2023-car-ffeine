FROM amazoncorretto:17-alpine-jdk

# WORKDIR /app

COPY build/libs/*.jar /app/carffeine.jar

ENTRTYPOINT ["java", "-jar", "/app/carffeine.jar"]
