FROM openjdk:alpine

MAINTAINER yohny

WORKDIR /opt

RUN  wget -q http://tux.rainside.sk/apache/nifi/1.1.2/nifi-1.1.2-bin.tar.gz \
     && tar xfz nifi-1.1.2-bin.tar.gz \
     && ln -s /opt/nifi-1.1.2 /opt/nifi

EXPOSE 8080
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

CMD [ "/opt/nifi/bin/nifi.sh", "run" ]
