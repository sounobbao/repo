FROM openjdk:11-slim

RUN apt-get update -y \
 && apt-get install -y curl ca-certificates openssl git tar sqlite fontconfig tzdata iproute2 \
 && useradd -d /home/container -m container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./start_java.sh /start_java.sh

CMD ["/bin/bash", "/start_java.sh"]
