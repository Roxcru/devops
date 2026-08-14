#!/bin/sh

LOG_DIR="/var/log/app"

echo "$(date '+%Y-%m-%d %H:%M:%S') - Buscando logs comprimidos mayores a 10 minutos..."

find "$LOG_DIR" -type f -name "app_*.log.gz" -mmin +10 -print -delete

echo "$(date '+%Y-%m-%d %H:%M:%S') - Limpieza finalizada"