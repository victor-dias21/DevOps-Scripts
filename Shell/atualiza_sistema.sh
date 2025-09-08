#!/bin/bash

#----------------------------------------------------------------#
# Script Name: atualiza_sistema.sh
# Description: Atualiza o sistema usando o comando apt.
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
#----------------------------------------------------------------#
# Usage: ./atualiza_sistema.sh
#----------------------------------------------------------------#

VERDE="\e[32m"
AMARELO="\e[33m"
VERMELHO="\e[31m"
RESET="\e[0m"

# Verificar se está sendo executado como root
if [ "$EUID" -ne 0 ]; then
    echo -e "${VERMELHO}Este script precisa ser executado como root!${RESET}"
    exit 1
fi

TIME=1
clear

while true; do
    echo " "
    echo -e "${VERDE}=======================================================${RESET}"
    echo -e "${AMARELO} Seja bem-vindo ao $(basename "$0") do comando APT! ${RESET}"
    echo -e "${VERDE}=======================================================${RESET}"
    echo " "

    echo -e "Escolha uma opção abaixo para começar!${RESET}"
    echo -e "${AMARELO} 1 ${RESET} - ${VERDE}Verificar repositório do sistema${RESET}"
    echo -e "${AMARELO} 2 ${RESET} - ${VERDE}Mostrar atualizações do sistema${RESET}"
    echo -e "${AMARELO} 3 ${RESET} - ${VERDE}Instalar atualizações do sistema${RESET}"
    echo -e "${AMARELO} 4 ${RESET} - ${VERDE}Limpar o sistema${RESET}"
    echo -e "${AMARELO} 5 ${RESET} - ${VERDE}Remover pacotes não necessários${RESET}"
    echo -e "${AMARELO} 0 ${RESET} - ${VERDE}Sair do sistema${RESET}"
    echo " "

    echo -n "Opção escolhida: "
    read opcao

    case $opcao in
        1)
            echo -e "${AMARELO}Verificando o sistema por atualizações...${RESET}"
            sleep $TIME
            apt update
            ;;
        2)
            echo -e "${AMARELO}Mostrando as atualizações do sistema...${RESET}"
            sleep $TIME
            apt list --upgradable
            ;;
        3)
            echo -e "${VERDE}Instalando atualizações do sistema...${RESET}"
            sleep $TIME
            apt upgrade -y
            ;;
        4)
            echo -e "${VERDE}Limpando o sistema...${RESET}"
            apt clean
            apt autoclean
            ;;
        5)
            echo -e "${VERDE}Removendo pacotes desnecessários do sistema...${RESET}"
            sleep $TIME
            apt autoremove -y
            ;;
        0)
            echo -e "${VERMELHO}Saindo do sistema...${RESET}"
            sleep $TIME
            exit 0
            ;;
        *)
            echo -e "${VERMELHO}Opção inválida, tente novamente!${RESET}"
            ;;
    esac
done
${RESET}"
    echo -e "${AMARELO} SEJA BEM-VINDO AO $(basename "$0") DO LINUX! ${RESET}"
    echo -e "${VERDE}==========================================${RESET}"
    echo " "

    echo -e "Escolha uma opção abaixo para começar!${RESET}"
    echo -e "${AMARELO}1${RESET} - ${VERDE}Verificar repositório do sistema${RESET}"
    echo -e "${AMARELO}2${RESET} - ${VERDE}Mostrar atualizações do sistema${RESET}"
    echo -e "${AMARELO}3${RESET} - ${VERDE}Instalar atualizações do sistema${RESET}"
    echo -e "${AMARELO}4${RESET} - ${VERDE}Limpar o sistema${RESET}"
    echo -e "${AMARELO}5${RESET} - ${VERDE}Remover pacotes não necessários${RESET}"
    echo -e "${AMARELO}0${RESET} - ${VERDE}Sair do sistema${RESET}"
    echo " "

    echo -n "Opção escolhida: "
    read opcao

    case $opcao in
        1)
            echo -e "${AMARELO}Verificando o sistema por atualizações...${RESET}"
            sleep $TIME
            apt update
            ;;
        2)
            echo -e "${AMARELO}Mostrando as atualizações do sistema...${RESET}"
            sleep $TIME
            apt list --upgradable
            ;;
        3)
            echo -e "${VERDE}Instalando atualizações do sistema...${RESET}"
            sleep $TIME
            apt upgrade -y
            ;;
        4)
            echo -e "${VERDE}Limpando o sistema...${RESET}"
            apt clean
            apt autoclean
            ;;
        5)
            echo -e "${VERDE}Removendo pacotes desnecessários do sistema...${RESET}"
            sleep $TIME
            apt autoremove -y
            ;;
        0)
            echo -e "${VERMELHO}Saindo do sistema...${RESET}"
            sleep $TIME
            exit 0
            ;;
        *)
            echo -e "${VERMELHO}Opção inválida, tente novamente!${RESET}"
            ;;
    esac
done
${RESET}"
    echo -e "${AMARELO} SEJA BEM-VINDO AO $(basename "$0") DO LINUX! ${RESET}"
    echo -e "${VERDE}==========================================${RESET}"
    echo " "

    echo -e "Escolha uma opção abaixo para começar!${RESET}"
    echo -e "${AMARELO}1${RESET} - ${VERDE}Verificar repositório do sistema${RESET}"
    echo -e "${AMARELO}2${RESET} - ${VERDE}Mostrar atualizações do sistema${RESET}"
    echo -e "${AMARELO}3${RESET} - ${VERDE}Instalar atualizações do sistema${RESET}"
    echo -e "${AMARELO}4${RESET} - ${VERDE}Limpar o sistema${RESET}"
    echo -e "${AMARELO}5${RESET} - ${VERDE}Remover pacotes não necessários${RESET}"
    echo -e "${AMARELO}0${RESET} - ${VERDE}Sair do sistema${RESET}"
    echo " "

    echo -n "Opção escolhida: "
    read opcao

    case $opcao in
        1)
            echo -e "${AMARELO}Verificando o sistema por atualizações...${RESET}"
            sleep $TIME
            apt update
            ;;
        2)
            echo -e "${AMARELO}Mostrando as atualizações do sistema...${RESET}"
            sleep $TIME
            apt list --upgradable
            ;;
        3)
            echo -e "${VERDE}Instalando atualizações do sistema...${RESET}"
            sleep $TIME
            apt upgrade -y
            ;;
        4)
            echo -e "${VERDE}Limpando o sistema...${RESET}"
            apt clean
            apt autoclean
            ;;
        5)
            echo -e "${VERDE}Removendo pacotes desnecessários do sistema...${RESET}"
            sleep $TIME
            apt autoremove -y
            ;;
        0)
            echo -e "${VERMELHO}Saindo do sistema...${RESET}"
            sleep $TIME
            exit 0
            ;;
        *)
            echo -e "${VERMELHO}Opção inválida, tente novamente!${RESET}"
            ;;
    esac
done
${RESET}"
    echo -e "${AMARELO} SEJA BEM-VINDO AO $(basename "$0") DO LINUX! ${RESET}"
    echo -e "${VERDE}==========================================${RESET}"
    echo " "

    echo -e "Escolha uma opção abaixo para começar!${RESET}"
    echo -e "${AMARELO}1${RESET} - ${VERDE}Verificar repositório do sistema${RESET}"
    echo -e "${AMARELO}2${RESET} - ${VERDE}Mostrar atualizações do sistema${RESET}"
    echo -e "${AMARELO}3${RESET} - ${VERDE}Instalar atualizações do sistema${RESET}"
    echo -e "${AMARELO}4${RESET} - ${VERDE}Limpar o sistema${RESET}"
    echo -e "${AMARELO}5${RESET} - ${VERDE}Remover pacotes não necessários${RESET}"
    echo -e "${AMARELO}0${RESET} - ${VERDE}Sair do sistema${RESET}"
    echo " "

    echo -n "Opção escolhida: "
    read opcao

    case $opcao in
        1)
            echo -e "${AMARELO}Verificando o sistema por atualizações...${RESET}"
            sleep $TIME
            apt update
            ;;
        2)
            echo -e "${AMARELO}Mostrando as atualizações do sistema...${RESET}"
            sleep $TIME
            apt list --upgradable
            ;;
        3)
            echo -e "${VERDE}Instalando atualizações do sistema...${RESET}"
            sleep $TIME
            apt upgrade -y
            ;;
        4)
            echo -e "${VERDE}Limpando o sistema...${RESET}"
            apt clean
            apt autoclean
            ;;
        5)
            echo -e "${VERDE}Removendo pacotes desnecessários do sistema...${RESET}"
            sleep $TIME
            apt autoremove -y
            ;;
        0)
            echo -e "${VERMELHO}Saindo do sistema...${RESET}"
            sleep $TIME
            exit 0
            ;;
        *)
            echo -e "${VERMELHO}Opção inválida, tente novamente!${RESET}"
            ;;
    esac
done
