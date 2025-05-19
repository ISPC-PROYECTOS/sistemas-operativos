#!/bin/bash
clear
echo "=============================================="
while true; do
    echo "Gestión de Procesos"
    echo "=============================================="
    echo "1. Ver procesos en ejecución"
    echo "2. Detalle de un proceso por PID"
    echo "3. Enviar señal a un proceso"
    echo "4. Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) 
            echo "=============================================="
            ./procesos/ver_procesos.sh
            echo "=============================================="
            ;;
        2) 
            echo "=============================================="
            ./procesos/detalle_proceso.sh
            echo "=============================================="
            ;;
        3) 
            echo "=============================================="
            ./procesos/enviar_senial.sh
            echo "=============================================="
            ;;
        4) 
            clear
            echo "Saliendo..."; 
            exit 0
            ;;
        *) 
            echo "Opción no válida" 
            ;;
    esac
done
