 #!/bin/bash

enviar_senal_pid() {
    echo"Enviar señales a procesos activos en el sistema."
    echo "Ingrese el PID del proceso al que desea enviar una señal:"
    read pid
    echo "Ingrese la señal que desea enviar (ejemplo:15 (SIGTERM), 9 (SIGKILL), KILLSTOP:"
    read senal

    echo "¿Está seguro de que desea enviar la señal $senal al proceso con PID $pid? (s/n)"
    read confirmacion
}
# agregar el if con mensajes de exito/cancelacion