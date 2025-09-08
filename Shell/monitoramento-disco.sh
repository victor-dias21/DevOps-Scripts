#!/bin/bash

 
ponto_montagem="/mnt/c"
nome_log=$(date +%F-%H:%M)
diretorio="/home/victor/Scripting/logs"
uso_disco=$( df -h | grep $ponto_montagem | awk '{print $1,$5}')


echo "Uso de disco em:" $uso_disco > "$diretorio/$nome_log.log"

