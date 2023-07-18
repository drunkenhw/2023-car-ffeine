FROM amazoncorretto:17-alpine-jdk

# WORKDIR /app

COPY build/libs/*.jar /app/carffeine.jar

ENTRYPOINT ["java", "-jar", "/app/carffeine.jar"]
