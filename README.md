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

3. **Menu gestión procesos**:

3.1 **Función para mostrar los procesos**:
Muestra los procesos en ejecución ordenados por uso de CPU de mayor a menor.  El script solicita al sistema la lista completa de procesos y la ordena según el porcentaje de uso de CPU.
Luego, muestra sólo los primeros 10 procesos para facilitar la lectura y detectar rápidamente cuáles están consumiendo más recursos.

3.2 **Función de información detallada por PID**:
Solicita que el usuario ingrese el PID del proceso que desea consultar.
Luego muestra información detallada de ese proceso utilizando el comando ps.
Finalmente, espera que el usuario presione Enter para volver al menú principal, ejecutando nuevamente el script procesos.sh.

3.3 **Función para envio señal a un PID**:
Solicita que el usuario ingrese el PID del proceso al que se le quiere enviar una señal. 
Luego solicita que ingrese el número de señal que quiere enviar. 
Por último pide la confirmación del pedido. Si se confirma con "s" o "S", ejecuta la señal devolviendo mensaje si se llevó a cabo la acción o no, en cualquier otro caso se cancela la operación.