#!/bin/bash


# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
#----------------------------------------------------------------#
# Uso: ./devops_tools.sh
# Descrição: Instala ferramentas essenciais DevOps em sistemas Ubuntu/Debian.
#----------------------------------------------------------------#




set -e  # Encerra o script se algum comando falhar

echo "Atualizando repositórios e instalando ferramentas DevOps essenciais..."

# Atualiza a lista de pacotes e instala ferramentas essenciais
sudo apt update && sudo apt install -y \
    git \          # Controle de versão
    curl \         # Transferência de dados via URL
    wget \         # Download de arquivos
    unzip \        # Descompactar arquivos ZIP
    htop \         # Monitoramento de processos
    xclip \        # Copiar/colar via terminal
    docker.io \    # Docker Engine
    docker-compose-plugin  # Plugin Docker Compose

echo "Ferramentas essenciais instaladas com sucesso!"
