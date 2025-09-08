
#----------------------------------------------------------------#
# Script: useradd.py
# Descrição: Cria usuário com permissão su
# Autor: Victor Dias
#----------------------------------------------------------------#


import subprocess  # Permite executar comandos do sistema operacional
import sys         # Permite acessar argumentos passados na linha de comando e controlar saída do script
import os          # Permite interagir com o sistema, verificar usuário, etc.

# Verifica se o script está sendo executado como root (necessário para criar usuários)
if os.geteuid() != 0:
    print(" Run this script as root.")  # Informa que o script deve ser executado como root
    sys.exit(1)                        # Encerra o script com código de erro 1

# Verifica se o nome de usuário foi passado como argumento
if len(sys.argv) != 2:
    print("Usage: python add_user.py <username>")  # Mostra como usar o script
    sys.exit(1)                                    # Encerra o script com código de erro 1

# Captura o nome de usuário passado como argumento
username = sys.argv[1]

# Cria o usuário com diretório home (-m)
subprocess.run(['useradd', '-m', username])

# Define a senha do usuário (será solicitado ao executar)
subprocess.run(['passwd', username])  # Prompt para digitar senha

# Adiciona o usuário ao grupo sudo, garantindo privilégios administrativos
subprocess.run(['usermod', '-aG', 'sudo', username])

# Exibe mensagem de sucesso
print(f"User '{username}' created with sudo privileges.")
