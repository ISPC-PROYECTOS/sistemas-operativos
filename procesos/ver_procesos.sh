#!/bin/bash
echo "Procesos en ejecución:"
ps --sort=-%cpu | head -n 10
