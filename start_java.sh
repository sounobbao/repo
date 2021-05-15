#!/bin/bash

function proxy(){
	echo "Selecione o seu proxy"
	echo "Se quiseres alguma informção sobre os tipos server vá no canal #minecraft-proxys"
	options=('Bungeecord' 'Waterfall' 'Travertine' 'Velocity', 'Geyser')
    select version in "${options[@]}";
    do
    	if [[ ! " ${options[@]} " =~ " ${version} " ]]; then
    		echo "Essa versão não está na lista, a sair..."
    		exit 0
    	else
    		echo "A transferir... (PROXY: ${version})"
    		curl http://194.233.68.216:5051/download/proxy-${version}.jar -o server.jar
    		exit 0
    	fi
    done
}

function vanilla(){
	echo "Selecione a sua versão do minecraft vanilla"
	options=('1.16.5' '1.16.4' '1.16.3' '1.16.2' '1.16.1' '1.16' '1.15.2' '1.15.1' '1.15' '1.14.4' '1.14.3' '1.14.2' '1.14.1' '1.14' '1.13.2' '1.13.1' '1.13' )
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
	echo "Selecione a sua versão do PaperMC"
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
		echo "ou fassa upload de um server.jar para o file manager"
		echo "NOTA: só irao apareçer versões suportadas pela Java11"
	    options=(
	        "Forge"
	        "Paper"
	        "Vanilla"
		"Proxys"
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
	                proxy
			break
	             ;;
		    ${options[4]})
	                exit 0
	             ;;
	            *) 
	                echo "Opeção inválida"
	            ;;
	        esac
	    done
	else
	        echo "server.jar encontrado, a iniciar"
		printf "===================================\n"
		java -version
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
