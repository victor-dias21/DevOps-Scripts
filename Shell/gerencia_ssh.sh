#!/bin/bash

#----------------------------------------------------------------#
# Script Name: gerencia_ssh.sh
# Description: Gerencia o serviço SSH do sistema.
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
#----------------------------------------------------------------#
# Usage: ./gerencia_ssh.sh
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

TIME=2
clear

echo -e "${VERDE}==========================================${RESET}"
echo -e "${AMARELO} PROGRAMA DE GERENCIAMENTO DO SERVIDOR SSH ${RESET}"
echo -e "${VERDE}==========================================${RESET}"
echo ""

echo -e "Escolha uma opção para gerenciar o serviço SSH:${RESET}"
echo -e "${AMARELO}1${RESET} - ${VERDE}Iniciar o serviço do SSH${RESET}"
echo -e "${AMARELO}2${RESET} - ${VERDE}Parar o serviço do SSH${RESET}"
echo -e "${AMARELO}3${RESET} - ${VERDE}Reiniciar o serviço do SSH${RESET}"
echo -e "${AMARELO}4${RESET} - ${VERDE}Mostrar status do SSH${RESET}"
echo -e "${AMARELO}0${RESET} - ${VERDE}Sair do menu${RESET}"
echo ""

echo -n "Opção escolhida: "
read opcao

case $opcao in
    1)
        echo -e "${AMARELO}Iniciando o serviço do SSH!${RESET}"
        sleep $TIME
        systemctl start ssh
        ;;
    2)
        echo -e "${AMARELO}Parando o serviço do SSH!${RESET}"
        sleep $TIME
        systemctl stop ssh
        ;;
    3)
        echo -e "${AMARELO}Reiniciando o serviço do SSH!${RESET}"
        sleep $TIME
        systemctl restart ssh
        ;;
    4)
        echo -e "${VERDE}Mostrando o status do SSH!${RESET}"
        sleep $TIME
        systemctl status ssh
        ;;
    0)
        echo -e "${VERMELHO}Saindo do menu do SSH!${RESET}"
        sleep $TIME
        exit 0
        ;;
    *)
        echo -e "${VERMELHO}Opção inválida, digite outra opção!${RESET}"
        sleep $TIME
        exit 1
        ;;
esac
