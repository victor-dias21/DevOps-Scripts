#!/bin/bash
#----------------------------------------------------------------#
# Script: terraform_aws_setup.sh
# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
# Uso: ./terraform_aws_setup.sh
# Descrição: Instala Terraform e AWS CLI em sistemas Ubuntu/Debian.
#----------------------------------------------------------------#

set -e

echo "Instalando Terraform..."
if ! command -v terraform &> /dev/null; then
    wget -q https://releases.hashicorp.com/terraform/1.8.3/terraform_1.8.3_linux_amd64.zip -O terraform.zip
    unzip terraform.zip
    sudo mv terraform /usr/local/bin/
    rm terraform.zip
    echo "Terraform instalado."
else
    echo "Terraform já está instalado. Pulando..."
fi

echo "Instalando AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip
echo "AWS CLI instalado."
