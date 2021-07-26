# Source: https://github.com/docker-library/openjdk/issues/158
FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y --no-install-recommends openjfx && rm -rf /var/lib/apt/lists/*
VOLUME [„/data“]
WORKDIR /data
CMD /data/java/bin/java -jar /data/jRDC.jar
CMD /data/java/bin/java -jar /data/Appstore.jar
