#!/bin/bash

echo "========================="
echo "Informações do server"
echo "IP: ${SERVER_IP}"
echo "PORTA: ${SERVER_PORT}"
echo "========================="

echo "A tentar iniciar um server de minecraft"
if [ ! -f /usr/bin/ServerJars/${server_jar}.jar ]; then
  echo "O server selecionado não foi encontrado"
  echo "Por favor tente denovo"
  exit 0
else
  echo "Server encontrado, a iniciar..."
  cp -p /usr/bin/ServerJars/${server_jar}.jar /home/container/server.jar
  java -Xmx{{SERVER_MEMORY}}M -Xms256M -jar server.jar
fi
