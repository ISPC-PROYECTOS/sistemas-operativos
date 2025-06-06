#!/bin/bash

# Se agrega un sub mennu que facilite la navegacioón al usuario

while true; do
    echo -e "____________________________________________________"
    echo -e "Menu ver espacio en disco de archivos y directorios"
    echo "OPCION 1: Ver espacio de un archivo o directorio"
    echo "OPCION 2: Volver al menú anterior."

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1)
            read -p "Ingrese la ruta del directorio o archivo para verificar su tamaño: " ruta

        # Verificar si la ruta ingresada existe, luego, si existe, ejecutar el comendo du
            if [ -e "$ruta" ]; then
                echo -e "\nTamaño del archivo o directorio $ruta:"
                du -sh "$ruta"
            else
                echo -e "\nLa ruta ingresada no existe. Por favor, verifique e intente nuevamente."
            fi
            ;;
        2)
            echo -e "Volviendo al menu anterior..."
            exit
            ;;
        # Si ingresa una opcion invalida.
        *)
            echo "Opción inválida. Por favor, intente nuevamente."
            ;;
    esac
done
