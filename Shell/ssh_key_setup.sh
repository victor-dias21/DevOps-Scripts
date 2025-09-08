#!/bin/bash
#----------------------------------------------------------------#
# Script: ssh_key_setup.sh
# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
# Uso: ./ssh_key_setup.sh
# Descrição: Gera uma chave SSH e copia para a área de transferência
#             para adicionar no GitHub ou GitLab.
#----------------------------------------------------------------#

set -e

echo "Gerando chave SSH..."

mkdir -p ~/.ssh
if [ -f ~/.ssh/id_ed25519 ]; then
    echo "Chave SSH já existe em ~/.ssh/id_ed25519. Abortando para evitar sobrescrever."
    exit 1
fi

read -p "Digite seu email para a chave SSH: " email
ssh-keygen -t ed25519 -C "$email" -f ~/.ssh/id_ed25519 -N ""

# Instala xclip caso não esteja disponível
if ! command -v xclip &> /dev/null; then
    sudo apt install -y xclip
fi

# Copia chave pública para clipboard
xclip -selection clipboard < ~/.ssh/id_ed25519.pub

echo "Chave SSH copiada para o clipboard. Cole-a no GitHub/GitLab > Configurações SSH."
