# Toolkit

Integrantes del grupo: 

- Barrera, Lautaro
- Marchisone, Jorge
- Pereyra, Hebe
- Picco, Victoria
- Suárez, Mariela
- Valdivia, Jésica

## Descripción

Este toolkit es un conjunto de herramientas para la gestión de procesos en sistemas Linux. Proporciona un menú interactivo desde el cual los usuarios pueden realizar diversas operaciones relacionadas con los procesos del sistema.

## Archivos principales

- `main_toolkit.sh`: Script principal que muestra el menú principal y permite acceder a las funcionalidades implementadas.
- `procesos.sh`: Script que implementa la gestión de procesos, incluyendo:
- `ver_procesos.sh`: Mostrar los procesos en ejecución.
- `detalle_proceso.sh`: Mostrar información detallada de un proceso por su PID.
- `enviar_senial.sh`: Enviar señales a procesos por su PID.

## Requisitos

- Sistema operativo basado en Linux.
- Bash shell.
- Permisos de ejecución para los scripts.

## Uso

1. **Ejecutar el script principal**:
    ```bash
    ./main_toolkit.sh
    ```

2. **Seleccionar la opción "Gestión de procesos" para acceder al menú de procesos**.