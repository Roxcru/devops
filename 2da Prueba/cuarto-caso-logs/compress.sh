#!/bin/sh

LOG_DIR="/var/log/app"

for FILE in "$LOG_DIR"/app_*.log
do
    if [ -f "$FILE" ]; then

        echo "$(date '+%Y-%m-%d %H:%M:%S') - Comprimiendo $FILE"

        gzip "$FILE"

        chmod 644 "${FILE}.gz"

    fi
done