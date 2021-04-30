FROM alpine:3.4

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser -D -H /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./start_java.sh /start_java.sh

CMD ["/bin/bash", "/start_java.sh"]
