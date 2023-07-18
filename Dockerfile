FROM amazoncorretto:17-alpine-jdk

# WORKDIR /app

COPY build/libs/*.jar /app/carffeine.jar

CMD ["java", "-jar", "/app/carffeine.jar"]
