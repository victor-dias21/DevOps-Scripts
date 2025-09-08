#!/bin/bash
#----------------------------------------------------------------#
# Script: docker_group.sh
# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
# Uso: ./docker_group.sh
# Descrição: Adiciona o usuário atual ao grupo Docker para rodar 
#             containers sem sudo.
#----------------------------------------------------------------#

set -e

echo "Adicionando usuário ao grupo Docker..."
sudo usermod -aG docker "$(whoami)"

echo "Usuário adicionado ao grupo Docker."
echo "Você pode precisar sair e entrar novamente ou executar: newgrp docker"
