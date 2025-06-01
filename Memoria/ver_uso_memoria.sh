#!/bin/bash

monitor_de_memoria() {
    while true; do
        clear
        echo "=== Monitor de Memoria $(date '+%H:%M:%S') ==="
        echo ""
        
        free -h
        
        echo ""
        echo "Presiona Ctrl+C para salir"
        echo "Próxima actualización en 2 segundos..."
        
        sleep 2
    done
}

# Mensaje de salida al presionar Ctrl+C
trap 'echo -e "\nSaliendo..."; exit 0' SIGINT

monitor_de_memoria