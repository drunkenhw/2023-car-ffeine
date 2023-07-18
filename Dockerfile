FROM amazoncorretto:17-alpine-jdk

WORKDIR /app

COPY build/libs/*.jar /app/jwp-shopping-order.jar

CMD ["java", "-jar", "/app/carffeine.jar"]
