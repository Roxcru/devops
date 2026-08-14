#!/bin/sh

LOG="/var/log/app/app.log"
MAX_SIZE=5242880

mkdir -p /var/log/app

if [ ! -f "$LOG" ]; then
    touch "$LOG"
    exit 0
fi

SIZE=$(stat -c%s "$LOG")

echo "$(date '+%Y-%m-%d %H:%M:%S') - Tamaño actual: ${SIZE} bytes"

if [ "$SIZE" -ge "$MAX_SIZE" ]; then

    TIMESTAMP=$(date '+%Y%m%d_%H%M%S')

    mv "$LOG" "/var/log/app/app_${TIMESTAMP}.log"

    touch "$LOG"

    chmod 644 "$LOG"

    echo "$(date '+%Y-%m-%d %H:%M:%S') - Log rotado correctamente"

fi