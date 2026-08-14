#!/bin/sh

mkdir -p /var/log/app

echo "Iniciando generador de logs..."

while true
do
    printf '%s - INFO - Simulacion de actividad de la aplicacion - generando logs continuamente\n' "$(date '+%Y-%m-%d %H:%M:%S')" >> /var/log/app/app.log

    sleep 0.01
done