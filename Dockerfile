FROM openjdk:21-jdk

ARG SPRING_ACTIVE_PROFILE
ENV PROFILE=${SPRING_ACTIVE_PROFILE}

COPY build/libs/*SNAPSHOT.jar /font-server.jar

ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}", "-jar", "font-server.jar"]
