# DevOps Scripts



![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
[![Author](https://img.shields.io/badge/author-Victor%20Dias-blue)](https://www.linkedin.com/in/victor-rebelo-dias)  
[![License](https://img.shields.io/badge/license-MIT-green)]  

Repositório com scripts **Shell/Bash** voltados para **DevOps**, automação de tarefas, configuração de ambiente e produtividade no Linux (Ubuntu/Debian).  

Todos os scripts foram desenvolvidos para **automatizar tarefas comuns de DevOps**, como:

- Instalação de ferramentas essenciais (Git, Docker, Terraform, AWS CLI, Zsh, Oh My Zsh, Powerlevel10k, etc.)
- Configuração de Git global
- Criação de estrutura de pastas DevOps
- Gerenciamento de SSH keys
- Configuração do usuário para o Docker
- Monitoramento de serviços, memória e rede (em scripts adicionais)
- Integração com sistemas de terminal modernos e produtivos  

---

## Conteúdo do Repositório

#### SSH Key Setup**
- Script: `ssh_key_setup.sh`
- Função: Gera uma chave SSH (`ed25519`) e copia para a área de transferência, pronta para adicionar no GitHub ou GitLab.

### Docker Group**
- Script: `docker_group.sh`
- Função: Adiciona o usuário atual ao grupo Docker, permitindo executar containers sem `sudo`.

### Oh My Zsh + Powerlevel10k**
- Script: `oh_my_zsh_setup.sh`
- Função: Instala Zsh, Oh My Zsh e o tema Powerlevel10k para melhorar a produtividade e estética do terminal.

### Git Config**
- Script: `git_config.sh`
- Função: Configura usuário, e-mail e preferências globais do Git (branch padrão, rebase e cores).

### Estrutura de Pastas DevOps**
- Script: `devops_folders.sh`
- Função: Cria pastas padrão para organização de projetos, scripts, logs e ferramentas DevOps.

###  Terraform e AWS CLI**
- Script: `terraform_aws_setup.sh`
- Função: Instala Terraform e AWS CLI, ferramentas essenciais para engenharia de infraestrutura.

---

## Pré-requisitos

- Sistema operacional: **Ubuntu / Debian**
- Acesso com privilégios **sudo**
- Conexão à internet para downloads e instalação de pacotes  

---

## Como usar

1. Clone o repositório:
```bash
git clone https://github.com/victor-dias21/DevOps-Scripts.git
cd DevOps-Scripts
