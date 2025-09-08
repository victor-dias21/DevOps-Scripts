#----------------------------------------------------------------#
# Script: useradd.py
# Descrição: Faz backup de um diretório para outro
# Autor: Victor Dias
#----------------------------------------------------------------#


import tarfile                  # Para criar arquivos .tar e .tar.gz (compactação)
from datetime import datetime   # Para gerar timestamps (datas e horas)
from pathlib import Path        # Para manipulação fácil de caminhos de arquivos e pastas

# Pasta que será feita backup
source = Path('/path/to/important/data')

# Pasta onde o backup será salvo
backup_dir = Path('/path/to/backup')

# Gera um timestamp atual no formato YYYYMMDDHHMMSS
timestamp = datetime.now().strftime('%Y%m%d%H%M%S')

# Define o nome do arquivo de backup incluindo o timestamp
backup_file = backup_dir / f'backup_{timestamp}.tar.gz'

# Cria o diretório de backup caso ele não exista
backup_dir.mkdir(parents=True, exist_ok=True)

# Cria o arquivo .tar.gz e adiciona a pasta de origem
with tarfile.open(backup_file, "w:gz") as tar:
    tar.add(source, arcname=source.name)  # 'arcname' mantém apenas o nome da pasta no arquivo, sem caminho completo

# Exibe mensagem informando onde o backup foi salvo
print(f"Backup created at: {backup_file}")
