FROM ubuntu:latest

RUN apt-get update -y \
 && apt-get -y --no-install-recommends install ca-certificates bzip2 wget tar curl jq \
 && apt -q clean all \
 && useradd -d /home/container -m container
 
USER container
ENV  USER=container HOME=/home/container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./start_pmmp.sh /start_pmmp.sh

CMD         ["/bin/bash", "/start_pmmp.sh"]