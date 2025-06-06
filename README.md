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
-
- `procesos.sh`: Script que implementa la gestión de procesos mediante un menu con las siguientes opciones:
- `ver_procesos.sh`: Mostrar los procesos en ejecución.
- `detalle_proceso.sh`: Mostrar información detallada de un proceso por su PID.
- `enviar_senial.sh`: Enviar señales a procesos por su PID.
-
- `memoria.sh`: Script que implementa la gestión de memoria mediante un menu con las siguientes opciones:
- `ver_uso_memoria.sh`: Mostrar la memoria ram y swap.
- `lista_masmemoria.sh`: Mostrar los 10 procesos que más memoria consumen.
-
- `disco.sh`: Script que implementa la gestión de memoria mediante un menu con las siguientes opciones:
- `ver_espacio.sh`: Mostrar espacio total, consumido y disponible de los discos.
- `ver_espacio_archivo.sh`: Mostrar espacio consumido por un archivo o directorio.
- `lista_permisos.sh`: Mostrar detalles como permisos, propietario, etc. de un archivo o directorio.

## Requisitos

- Sistema operativo basado en Linux.
- Bash shell.
- Permisos de ejecución para los scripts.

## Uso

1.  **Ejecutar el script principal**:

    ```bash
    ./main_toolkit.sh
    ```

2.  **Seleccionar la opción**:
    En el menú principal se podrá ver en el encabezado, el título y usuario que ejecuta el programa.
    Luego se despliega un menú con los distintos gestores que se utilizarán a lo largo de las evidencias(Por ahora solo implementado Gestor de Procesos), y la opción de cerrar y salir.
    Se utiliza un bucle "while" para permanecer en el menú, y case para seleccionar las distintas opciones.

3.  **Menu gestión procesos**:

        3.1 **Función para mostrar los procesos**:

    Muestra los procesos en ejecución ordenados por uso de CPU de mayor a menor. El script solicita al sistema la lista completa de procesos y la ordena según el porcentaje de uso de CPU.
    Luego, muestra sólo los primeros 10 procesos para facilitar la lectura y detectar rápidamente cuáles están consumiendo más recursos.

        3.2 **Función de información detallada por PID**:

    Solicita que el usuario ingrese el PID del proceso que desea consultar.
    Luego muestra información detallada de ese proceso utilizando el comando ps.
    Finalmente, espera que el usuario presione Enter para volver al menú principal, ejecutando nuevamente el script procesos.sh.

        3.3 **Función para envio señal a un PID**:

    Solicita que el usuario ingrese el PID del proceso al que se le quiere enviar una señal.
    Luego solicita que ingrese el número de señal que quiere enviar.
    Por último pide la confirmación del pedido. Si se confirma con "s" o "S", ejecuta la señal devolviendo mensaje si se llevó a cabo la acción o no, en cualquier otro caso se cancela la operación.

4.  **Menu gestión de memoria**

        4.1 **Función de Ver uso de memoria Ram y swap**

    Muestra la información de memoria total, utilizada, y libre, a traves del comando free -h. Se actualiza cada 2 segundos con la nueva información para un mejor seguimiento.

        4.2 **Función de ver procesos que consumen más memoria**

5.  **Menu de gestión de disco**

        5.1 **Ver espacio de disco**

    Muestra el tamaño total, usado y disponible, de los discos y carpetas montados al sistema de archivos. Utiliza el comando df -h para mostrar los datos de manera más legible.

        5.2 **Ver uso de disco de un archivo o carpeta**
    Muestra un menú de dos opciones: 1)Solicita al usuario la ruta del archivo o del directorio, para mostrar el espacio ocupado por el mismo. 2)Ofrece la opción del volver al menú anterior. 
    Si el usuario elige opción 1, se le solicita que ingrese la ruta. La misma será verificada (if[ -e "$ruta"]), si es correcta se mostrará la información del espacio ocupado en disco (du -sh "$ruta"), si la ruta es erronea, imprime un mensaje de error, y vuelve al menu de opciones local.
    Futuras mejoras: se evalua adicionar una tercera opción, que le permita al usuario buscar la ruta que desea ingresar.


        5.3 **Ver permisos de un archivo o carpeta**

    Solicita la ruta del archivo o carpeta, y muestra el contenido de directorios en formato largo, con información detallada de permisos, el número de enlaces que apuntan al archivo, el propietario, el grupo, el tamaño, fecha y hora de modificación, y por último el nombre del archivo o directorio. Los permisos son mostrados como una cadena de caracteres que indica los permisos de lectura (r), escritura (w) y ejecución (x) para el propietario, el grupo y el resto de usuarios.
