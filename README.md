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
- `procesos.sh`: Script que implementa la gestión de procesos mediante un menu con las siguientes opciones:
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

2. **Seleccionar la opción**:
En el menú principal se podrá ver en el encabezado, el título y usuario que ejecuta el programa.
Luego se despliega un menú con los distintos gestores que se utilizarán a lo largo de las evidencias(Por ahora solo implementado Gestor de Procesos), y la opción de cerrar y salir.

3.** Menu Gestión procesos**:

3.1 ** Función para mostrar los procesos**:

3.2 ** Función de información detallada por PID**:

3.3 ** Funcion para envio señal a un PID**:



