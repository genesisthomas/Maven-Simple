# Step : cache maven dependencies
FROM maven:3.6.3-jdk-8 as target
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline

RUN echo "building..."
RUN mvn clean install -DskipTests=true 