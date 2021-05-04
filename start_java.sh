#!/bin/bash

function forge(){
	echo "Selecione a sua versão do forge"
	options=(
	        "1.16.5"
	        "1.12.2"
	        "1.7.10"
	        "Sair"
	)
	select option in "${options[@]}"; do
	    case $option in
	        ${options[0]})
                echo "A transferir... (FORGE: 1.16.5/BUILD: RECOMENDED)"
	            curl http://194.233.68.216:5051/download/forge-1.16.5-installer.jar -o installer.jar
	            java -Xmx{{SERVER_MEMORY}}M -Xms128M -jar installer.jar --installServer
	            rm -rf installer.jar
	            exit 0
	        ;;
			${options[1]})
                echo "A transferir... (FORGE: 1.12.2/BUILD: RECOMENDED)"
	            curl http://194.233.68.216:5051/download/forge-1.12.2-installer.jar -o installer.jar
	            java -Xmx{{SERVER_MEMORY}}M -Xms128M -jar installer.jar --installServer
	            rm -rf installer.jar
	            exit 0
	        ;;
			${options[2]})
                echo "A transferir... (FORGE: 1.7.10/BUILD: RECOMENDED)"
	            curl http://194.233.68.216:5051/download/forge-1.7.10-installer.jar -o installer.jar
	            java -Xmx{{SERVER_MEMORY}}M -Xms128M -jar installer.jar --installServer
	            rm -rf installer.jar
	            exit 0
	        ;;
			${options[3]})
	            echo "A sair"
				exit 0
	        ;;
		esac
	done
}

main_menu () {
	if [ ! -f ./server.jar ]; then	
	    echo "server.jar não encontrado... selecione um server"
	    options=(
	        "Forge"
	        "Paper"
	        "Vanilla"
	        "Sair"
	    )
	    select option in "${options[@]}"; do
	        case $option in
	            ${options[0]})
	                forge
	                break
	            ;;
	            ${options[1]})
	                paper
	                break
	            ;;
	            ${options[2]})
	                vanilla
	                break
	             ;;
	            ${options[3]})
	                exit
	             ;;
	            *) 
	                echo "Opeção inválida"
	            ;;
	        esac
	    done
	else
		echo "server.jar encontrado, a iniciar"
		java -Xmx{{SERVER_MEMORY}}M -Xms128M -jar server.jar
	fi
}

echo "========================="
echo "Informações do server"
echo "IP: {{ SERVER_IP }}"
echo "PORT: {{ SERVER_PORT }}"
echo "========================="
echo
echo "==========[ INFORMAÇÕES ]=========="
echo "Para alterares o tipo do server"
echo "apaga o ficheiro server.jar"
echo "==================================="

main_menu
