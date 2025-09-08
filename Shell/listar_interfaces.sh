#!/usr/bin/env bash

#----------------------------------------------------------------#
# Script Name: listar_interfaces.sh
# Description: Exibe as interfaces de rede e seus endereços IPv4 em formato de tabela.
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
#----------------------------------------------------------------#
# Usage: ./listar_interfaces.sh
#----------------------------------------------------------------#

VERDE="\e[32m"
RESET="\e[0m"

# Cabeçalho da tabela
echo -e "${VERDE}+-------------+-----------------+${RESET}"
echo -e "${VERDE}|  Interface  |   Endereço IP   |${RESET}"
echo -e "${VERDE}+-------------+-----------------+${RESET}"

# Listar interfaces com seus respectivos IPs
while read -r line; do
    iface=$(echo "$line" | awk '{print $2}')
    ipaddr=$(echo "$line" | awk '{print $4}' | cut -d/ -f1)
    printf "| %-11s | %-15s |\n" "$iface" "$ipaddr"
done <<< "$(ip -o -4 addr show)"

# Rodapé da tabela
echo -e "${VERDE}+-------------+-----------------+${RESET}"
