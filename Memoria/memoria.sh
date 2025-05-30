#!/bin/bash
clear
echo "=============================================="
while true; do
    echo "Gestión de Memoria"
    echo "=============================================="
    echo "1. Ver uso de memoria RAM y SWAP"
    echo "2. Ver procesos que más memoria consumen"
      echo "4. Salir"
    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) 
            echo "=============================================="
            ./Memoria/ver_uso_memoria.sh
            echo "=============================================="
            ;;
        2) 
            echo "=============================================="
            ./Memoria/lista_masmemoria.sh
            echo "=============================================="
            ;;
        3) 
            clear
            echo "Saliendo..."; 
            exit 0
            ;;
        *) 
            echo "Opción no válida" 
            ;;
    esac
done
