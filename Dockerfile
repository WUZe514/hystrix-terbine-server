FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD hystrix-terbine-server-0.0.1-SNAPSHOT.jar app.jar
#RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS=""
#这样写会以shell方式执行，会替换变量
ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar
EXPOSE 8769