#!/bin/bash

while true; do
    echo "Gestión de Procesos"
    echo "1. Ver procesos en ejecución"
    echo "2. Detalle de un proceso por PID"
    echo "3. Enviar señal a un proceso"
    echo "4. Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) ./ver_procesos.sh ;;
        2) ./detalle_proceso.sh ;;
        3) ./enviar_senial.sh ;;
        4) echo "Saliendo..."; exit ;;
        *) echo "Opción no válida" ;;
    esac
done
