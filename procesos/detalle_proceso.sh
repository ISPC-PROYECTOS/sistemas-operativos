#!/bin/bash

# Script para mostrar información detallada de un proceso específico
read -p "Ingrese el PID del proceso: " pid
echo "Información detallada del proceso:"
ps -p "$pid" -o pid,ppid,user,%cpu,%mem,vsz,rss,tty,stat,start,time,comm
echo
echo "Presione Enter para volver al menú..."
read -r dummy_var
./procesos/procesos.sh 