#!/bin/bash
#----------------------------------------------------------------#
# Script: oh_my_zsh_setup.sh
# Autor: Victor Dias
# Linkedin: www.linkedin.com/in/victor-rebelo-dias
# Uso: ./oh_my_zsh_setup.sh
# Descrição: Instala Zsh, Oh My Zsh, o tema Powerlevel10k e configura plugins essenciais.
#----------------------------------------------------------------#

set -e

echo "Atualizando repositórios..."
sudo apt update

echo "Instalando Zsh e fontes Powerline..."
sudo apt install -y zsh fonts-powerline git curl

echo "Instalando Oh My Zsh..."
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Instalando tema Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Configurando tema Powerlevel10k no .zshrc..."
sed -i 's|^ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|' ~/.zshrc

echo "Instalando plugins adicionais..."
# Clone do plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Clone do plugin kube-ps1
git clone https://github.com/jonmosco/kube-ps1.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/kube-ps1

echo "Configurando plugins no .zshrc..."
# Substitui ou adiciona a linha de plugins
sed -i 's/^plugins=.*/plugins=(kube-psa sudo kubectl terraform web-search git zsh-autosuggestions)/' ~/.zshrc

# Adiciona configuração do kube-ps1
grep -qxF "source \$ZSH/oh-my-zsh.sh" ~/.zshrc || echo "source \$ZSH/oh-my-zsh.sh" >> ~/.zshrc
grep -qxF "PROMPT='\\\$(kube_ps1) '\$PROMPT" ~/.zshrc || echo "PROMPT='\\\$(kube_ps1) '\$PROMPT" >> ~/.zshrc

echo "Configuração finalizada!"
echo "Execute 'chsh -s $(which zsh)' e abra um novo terminal para usar Zsh com Powerlevel10k."
