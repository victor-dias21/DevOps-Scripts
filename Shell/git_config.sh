#!/bin/bash
#----------------------------------------------------------------#
# Script: git_config.sh
# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
# Uso: ./git_config.sh
# Descrição: Configura usuário, email e preferências globais do Git.
#----------------------------------------------------------------#

set -e

echo "Configurando Git..."

read -p "Digite seu nome no Git: " name
read -p "Digite seu email no Git: " email

git config --global user.name "$name"
git config --global user.email "$email"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global color.ui auto

echo "Configuração do Git concluída."
