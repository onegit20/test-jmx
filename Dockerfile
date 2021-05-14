FROM openjdk:8-jre-slim
MAINTAINER yanyong
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo 'Asia/Shanghai' > /etc/timezone
ADD target/*.jar /opt/app.jar
CMD ["java","-jar","/opt/app.jar"]