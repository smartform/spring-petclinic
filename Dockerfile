FROM anapsix/alpine-java
LABEL maintainer="augustin@processdrive.com"
COPY /target/scala-maven-1.0.0.jar /home/scala-maven-1.0.0.jar
CMD ["java","-jar","/home/scala-maven-1.0.0.jar"]