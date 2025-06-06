#!/bin/bash

clear
echo "=============================================="
while true; do
    echo "Gestión de Disco"
    echo "=============================================="
    echo "1. Ver espacio en disco"
    echo "2. Consultar uso de disco por directorio/archivo"
    echo "3. Consultar permisos de un directorio/archivo"
    echo "4. Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) 
            echo "=============================================="
            ./Disco/ver_espacio.sh
            echo "=============================================="
            ;;
        2) 
            echo "=============================================="
            ./Disco/ver_espacio_archivo.sh
            echo "=============================================="
            ;;
        3) 
            echo "=============================================="
            ./Disco/lista_permisos.sh
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
