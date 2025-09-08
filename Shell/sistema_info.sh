#!/bin/bash
#----------------------------------------------------------------#
# Script: sistema_info.sh
# Descrição: Mostra informações do PC e executa utilitários básicos.
# Autor: Victor Dias
# Data: $(date +%d/%m/%Y)
#----------------------------------------------------------------#

# Definição de cores
VERDE="\e[32m"
VERMELHO="\e[31m"
AMARELO="\e[33m"
RESET="\e[0m"

while true; do
    clear
    echo -e "${AMARELO}## Programa que mostra dados do PC ##${RESET}"
    echo "-------------------------------------"
    echo ""
    echo -e "${VERDE}Nome da Máquina:${RESET} $(hostname)"
    echo -e "${VERDE}Usuário atual:${RESET} $(whoami)"
    echo -e "${VERDE}Sistema Operacional:${RESET} $(uname -o)"
    echo -e "${VERDE}Kernel:${RESET} $(uname -r)"
    echo -e "${VERDE}Diretório Home:${RESET} $HOME"
    echo ""
    echo -e "${AMARELO}Opções:${RESET}"
    echo -e "${VERDE}1)${RESET} Utilização da memória"
    echo -e "${VERDE}2)${RESET} Espaço do HD (MB)"
    echo -e "${VERDE}3)${RESET} Serviços de rede"
    echo -e "${VERDE}4)${RESET} Verificação de RootKit"
    echo -e "${VERDE}5)${RESET} Usuários logados"
    echo -e "${VERDE}6)${RESET} Visualizar /var/log/messages"
    echo -e "${VERDE}7)${RESET} Desligar ou Reiniciar"
    echo -e "${VERMELHO}8) Sair${RESET}"
    echo ""
    read -rp "Escolha uma opção: " opcao

    case $opcao in
        1)
            clear
            echo -e "${AMARELO}### Utilização da Memória ###${RESET}"
            free -m
            sleep 4
            ;;
        2)
            clear
            echo -e "${AMARELO}### Espaço do HD ###${RESET}"
            df -h
            sleep 3
            ;;
        3)
            clear
            echo -e "${AMARELO}### Serviços de Rede em Execução ###${RESET}"
            nmap localhost
            sleep 4
            ;;
	4)
	    clear
   		 echo -e "${AMARELO}Verificando RootKit...${RESET}"
    		 sleep 2

  	  # Verifica se o chkrootkit está instalado
   	 if ! command -v chkrootkit &> /dev/null; then
       		 echo -e "${VERMELHO}O chkrootkit não está instalado!${RESET}"
       		 read -rp "Deseja instalá-lo agora? (s/n): " resposta
          	 if [[ "$resposta" == "s" ]]; then
               		echo -e "${AMARELO}Instalando chkrootkit...${RESET}"
           		 sleep 1
            		apt update && apt install -y chkrootkit
            		echo -e "${VERDE}Instalação concluída!${RESET}"
           	else
            		echo -e "${VERMELHO}Não será possível realizar a verificação sem o chkrootkit.${RESET}"
         		   sleep 2
            	break
        	fi
    	fi

   		 # Executa a verificação
    			echo -e "${VERDE}Executando chkrootkit...${RESET}"
   			 sleep 1
   			 chkrootkit
   			 sleep 3
    	
;;

        5)
            clear
            echo -e "${AMARELO}### Usuários logados ###${RESET}"
            who
            sleep 5
            ;;
        6)
            clear
            echo -e "${AMARELO}### Conteúdo de /var/log/messages ###${RESET}"
            cat /var/log/messages
            sleep 10
            ;;
        7)
            clear
            echo -e "${AMARELO}## Menu para Desligar ou Reiniciar ##${RESET}"
            echo "1) Desligar"
            echo "2) Reiniciar"
            read -rp "Escolha (1/2): " dr
            if [[ "$dr" == "2" ]]; then
                echo -e "${VERDE}Reiniciando...${RESET}"
                sleep 2
                shutdown -r now
                exit
            elif [[ "$dr" == "1" ]]; then
                echo -e "${VERMELHO}Desligando...${RESET}"
                sleep 2
                shutdown -h now
                exit
            else
                echo -e "${VERMELHO}Opção inválida!${RESET}"
                sleep 2
            fi
            ;;
        8)
            read -rp "Tem certeza que deseja sair? (s/n): " sn
            if [[ "$sn" == "s" ]]; then
                echo -e "${VERMELHO}Saindo... Script encerrado em:$(date)${RESET}"
                sleep 2
                clear
                exit
            fi
            ;;
        *)
            echo -e "${VERMELHO}Opção inválida! Tente novamente.${RESET}"
            sleep 2
            ;;
    esac
done
