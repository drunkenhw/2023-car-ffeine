FROM amazoncorretto:17-alpine-jdk

WORKDIR /app

COPY build/libs/carffeine-0.0.1-SNAPSHOT.jar /app/carffeine.jar

CMD ["java", "-jar", "/app/carffeine.jar"]
