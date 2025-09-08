#!/bin/bash
#----------------------------------------------------------------#
# Script: devops_folders.sh
# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
# Uso: ./devops_folders.sh
# Descrição: Cria uma estrutura de pastas padrão para projetos DevOps.
#----------------------------------------------------------------#

set -e

echo "Criando estrutura de pastas padrão DevOps..."
mkdir -p ~/devops/{projects,scripts,logs,tools}
echo "Pastas criadas em ~/devops/"

