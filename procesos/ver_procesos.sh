#!/bin/bash
# Script para mostrar los procesos en ejecución de forma simple

echo "Procesos en ejecución:"
ps aux --sort=-%cpu | head -n 10
