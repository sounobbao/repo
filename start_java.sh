#!/bin/bash

function vanilla(){
	echo "Selecione a sua versão do minecraft vanilla"
	options=('1.16.5' '1.16.4' '1.16.3' '1.16.2' '1.16.1' '1.16' '1.15.2' '1.15.1' '1.15' '1.14.4' '1.14.3' '1.14.2' '1.14.1' '1.14' '1.13.2' '1.13.1' '1.13' '1.12.2' '1.12.1' '1.12' '1.11.2' '1.11.1' '1.11' '1.10.2' '1.10.1' '1.10' '1.9.4' '1.9.3' '1.9.2' '1.9.1' '1.9' '1.8.8' '1.8.7' '1.8.6' '1.8.5' '1.8.4' '1.8.3' '1.8.2' '1.8.1' '1.8' '1.7.10' '1.7.9' '1.7.8' '1.7.7' '1.7.6' '1.7.5' '1.7.4' '1.7.3' '1.7.2' '1.7.1' '1.7' '1.6.4' '1.6.3' '1.6.2' '1.6.1' '1.6' '1.5.2' '1.5.1' '1.5' '1.4.7' '1.4.6' '1.4.5' '1.4.4' '1.4.3' '1.4.2' '1.4.1' '1.4' '1.3.2' '1.3.1' '1.3' '1.2.5' '1.2.4' '1.2.3' '1.2.2' '1.2.1')
    select version in "${options[@]}";
    do
    	if [[ ! " ${options[@]} " =~ " ${version} " ]]; then
    		echo "Essa versão não está na lista, a sair..."
    		exit 0
    	else
    		echo "A transferir... (VANILLA: ${version})"
    		curl http://194.233.68.216:5051/download/vanilla-${version}.jar -o server.jar
    		exit 0
    	fi
    done
}

function paper(){
	echo "Selecione a sua versão do forge"
	options=(
	        "1.16.5"
			"1.16.4"
			"1.16.3"
			"1.16.2"
			"1.16.1"
	        "1.15.2"
	        "1.15.1"
	        "1.15"
	        "1.14.4"
	        "1.14.3"
	        "1.14.2"
	        "1.14.1"
	        "1.14"
	        "1.13.2"
	        "1.12.2"
	        "1.12"
	        "1.11.2"
	        "1.10.2"
	        "1.9.4"
	        "1.8.8"
	        "Sair"
	)
	select option in "${options[@]}"; do
	    case $option in
	        ${options[0]})
                echo "A transferir... (PAPER: 1.16.5)"
	            curl http://194.233.68.216:5051/download/paper-1.16.5.jar -o server.jar
	            exit 0
	        ;;
			${options[1]})
                echo "A transferir... (PAPER: 1.16.4)"
	            curl http://194.233.68.216:5051/download/paper-1.16.5.jar -o server.jar
	            exit 0
	        ;;
			${options[2]})
                echo "A transferir... (PAPER: 1.16.3)"
	            curl http://194.233.68.216:5051/download/paper-1.16.3.jar -o server.jar
	            exit 0
	        ;;
	        ${options[3]})
                echo "A transferir... (PAPER: 1.16.2)"
	            curl http://194.233.68.216:5051/download/paper-1.16.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[4]})
                echo "A transferir... (PAPER: 1.16.1)"
	            curl http://194.233.68.216:5051/download/paper-1.16.1.jar -o server.jar
	            exit 0
	        ;;
	        ${options[5]})
                echo "A transferir... (PAPER: 1.15.2)"
	            curl http://194.233.68.216:5051/download/paper-1.15.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[6]})
                echo "A transferir... (PAPER: 1.15.1)"
	            curl http://194.233.68.216:5051/download/paper-1.15.1.jar -o server.jar
	            exit 0
	        ;;
	        ${options[7]})
                echo "A transferir... (PAPER: 1.15)"
	            curl http://194.233.68.216:5051/download/paper-1.15.jar -o server.jar
	            exit 0
	        ;;
	        ${options[8]})
                echo "A transferir... (PAPER: 1.14.4)"
	            curl http://194.233.68.216:5051/download/paper-1.14.4.jar -o server.jar
	            exit 0
	        ;;
	        ${options[9]})
                echo "A transferir... (PAPER: 1.14.3)"
	            curl http://194.233.68.216:5051/download/paper-1.14.3.jar -o server.jar
	            exit 0
	        ;;
	        ${options[10]})
                echo "A transferir... (PAPER: 1.14.2)"
	            curl http://194.233.68.216:5051/download/paper-1.14.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[11]})
                echo "A transferir... (PAPER: 1.14.1)"
	            curl http://194.233.68.216:5051/download/paper-1.14.1.jar -o server.jar
	            exit 0
	        ;;
	        ${options[12]})
                echo "A transferir... (PAPER: 1.14)"
	            curl http://194.233.68.216:5051/download/paper-1.14.jar -o server.jar
	            exit 0
	        ;;
	        ${options[13]})
                echo "A transferir... (PAPER: 1.13.2)"
	            curl http://194.233.68.216:5051/download/paper-1.13.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[14]})
                echo "A transferir... (PAPER: 1.12.2)"
	            curl http://194.233.68.216:5051/download/paper-1.12.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[15]})
                echo "A transferir... (PAPER: 1.12)"
	            curl http://194.233.68.216:5051/download/paper-1.12.jar -o server.jar
	            exit 0
	        ;;
	        ${options[16]})
                echo "A transferir... (PAPER: 1.11.2)"
	            curl http://194.233.68.216:5051/download/paper-1.11.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[17]})
                echo "A transferir... (PAPER: 1.10.2)"
	            curl http://194.233.68.216:5051/download/paper-1.10.2.jar -o server.jar
	            exit 0
	        ;;
	        ${options[18]})
                echo "A transferir... (PAPER: 1.9.4)"
	            curl http://194.233.68.216:5051/download/paper-1.9.4.jar -o server.jar
	            exit 0
	        ;;
	        ${options[19]})
                echo "A transferir... (PAPER: 1.8.8)"
	            curl http://194.233.68.216:5051/download/paper-1.8.8.jar -o server.jar
	            exit 0
	        ;;
			${options[20]})
	            echo "A sair"
				exit 0
	        ;;
	        *)
				echo "Opeção Inválida"
			;;
		esac
	done
}

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
	            java -Xmx${SERVER_MEMORY}M -Xms128M -jar installer.jar --installServer
	            rm -rf installer.jar
		    mv forge-1.16.5-36.1.0.jar server.jar
	            exit 0
	        ;;
			${options[1]})
                echo "A transferir... (FORGE: 1.12.2/BUILD: RECOMENDED)"
	            curl http://194.233.68.216:5051/download/forge-1.12.2-installer.jar -o installer.jar
	            java -Xmx${SERVER_MEMORY}M -Xms128M -jar installer.jar --installServer
	            rm -rf installer.jar
		    mv forge-1.12.2-14.23.5.2855.jar server.jar
	            exit 0
	        ;;
			${options[2]})
                echo "A transferir... (FORGE: 1.7.10/BUILD: RECOMENDED)"
	            curl http://194.233.68.216:5051/download/forge-1.7.10-installer.jar -o installer.jar
	            java -Xmx${SERVER_MEMORY}M -Xms128M -jar installer.jar --installServer
	            rm -rf installer.jar
		    mv forge-1.7.10-10.13.4.1614-1.7.10-universal.jar server.jar
	            exit 0
	        ;;
			${options[3]})
	            echo "A sair"
				exit 0
	        ;;
	        *)
				echo "Opeção Inválida"
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
	        java -version
		printf "===================================\n"
		echo "    server.jar encontrado, a iniciar  "
		printf "===================================\n"
		java -Xmx${SERVER_MEMORY}M -Xms128M -jar server.jar
	fi
}

echo "========================="
echo "Informações do server"
echo "IP: ${SERVER_IP}"
echo "PORTA: ${SERVER_PORT}"
printf "=========================\n"
echo "==========[ INFORMAÇÕES ]=========="
echo "Para alterares o tipo do server"
echo "apaga o ficheiro server.jar"
printf "===================================\n"

main_menu
