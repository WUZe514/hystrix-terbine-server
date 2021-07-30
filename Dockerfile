FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD hystrix-terbine-server-0.0.1-SNAPSHOT.jar app.jar
#RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS="-Xms256m -Xmx512m -Xss1024K -XX:PermSize=128m -XX:MaxPermSize=256m"
ENTRYPOINT ["java","${JAVA_OPTS}","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8769