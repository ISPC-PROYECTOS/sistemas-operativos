#!/bin/bash
echo "Procesos en ejecución:"
ps aux --sort=-%cpu | head -n 10
