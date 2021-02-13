# First stage: complete build environment
FROM maven:3.5.0-jdk-8-alpine AS builder

# add pom.xml and source code
ADD ./pom.xml pom.xml
ADD ./src src/

# package jar
RUN mvn package -B -DskipTests

# Second stage: minimal runtime environment
From tomcat

# copy jar from the first stage
COPY --from=builder target/demo.war demo.war

ADD   target/demo.war /usr/local/tomcat/webapps/demo.war
 
