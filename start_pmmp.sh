#!/bin/bash

main_menu () {
	if [ ! -f ./pocketmine.phar ]; then
		echo "A transferir pocketmine.phar"
		curl -s https://serverjars.com/api/fetchJar/pocketmine -o pocketmine.phar
		curl -s https://jenkins.pmmp.io/job/PHP-7.4-Aggregate/lastSuccessfulBuild/artifact/PHP-7.4-Linux-x86_64.tar.gz -o php.tar.gz && \
		tar -xf php.tar.gz && \
		rm php.tar.gz
		echo "Pronto... A reiniciar servidor"
		exit 0
	else
	    echo "==========[ INFORMAÇÕES ]=========="
        echo "Esta build do pocketmine usa php 7.4"
        echo "versões anteriores talvez não funcionem"
        printf "===================================\n"
	    echo "pocketmine.phar encontrado a iniciar servidor..."
		printf "===================================\n"
		PHP_BINARY="./bin/php7/bin/php"
		exec "$PHP_BINARY" "./pocketmine.phar" "--no-wizard" $@
	fi
}

echo "========================="
echo "Informações do server"
echo "IP: ${SERVER_IP}"
echo "PORTA: ${SERVER_PORT}"
printf "=========================\n%s\n"

main_menu
