#!/bin/bash

read -p "Ingrese la ruta del archivo o directorio: " ruta

if [ -e "$ruta" ]; then
    echo "Permisos y detalles de '$ruta':"
    ls -l "$ruta"
else
    echo "La ruta ingresada no existe."
fi
