#!/bin/bash

# Configurações
HOST="10.0.0.160"
USER="root"
LOG_DIR="/home/victor/Scripting/logs"
TIMESTAMP=$(date +"%Y-%m-%d-%H:%M")
LOG_FILE="$LOG_DIR/$TIMESTAMP.log"

# Executa comandos remotos via SSH e salva em log
{
    echo "========== Monitoramento em $(date) =========="
    echo ""

    ssh -o StrictHostKeyChecking=no $USER@$HOST "
        echo '--- USO DE CPU ---'
        top -bn1 | grep 'Cpu(s)' | awk '{print \$2 + \$4 \"% usado\"}'

        echo '--- USO DE MEMÓRIA ---'
        free -h

        echo '--- USO DE DISCO ---'
        df -h /

        echo '--- TEMPERATURA ---'
        sensors 2>/dev/null | grep -E 'temp[0-9]+|Package id|Core' || echo 'sensors não disponível'
    "

    echo ""
} >> "$LOG_FILE" 2>&1
