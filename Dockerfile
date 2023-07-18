FROM amazoncorretto:17-alpine-jdk

WORKDIR /app

COPY /build/libs/c.jar /app/carffeine.jar

CMD ["java", "-jar", "/app/carffeine.jar"]
