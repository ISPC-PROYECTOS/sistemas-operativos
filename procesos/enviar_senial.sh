 #!/bin/bash

enviar_senal_pid() {
    echo"Enviar señales a procesos activos en el sistema."
    echo "Ingrese el PID del proceso al que desea enviar una señal:"
    read pid
    echo "Ingrese la señal que desea enviar (ejemplo:15 (SIGTERM), 9 (SIGKILL),  STOP (SIGSTOP), CONT (SIGCONT)):"
    read senal

    echo "¿Está seguro de que desea enviar la señal $senal al proceso con PID $pid? (s/n)"
    read confirmacion
    
    if [[ "$confirmacion" == "s" || "$confirmacion" == "S" ]]; then
                kill -s "$senal" "$pid"
        if [[ $? -eq 0 ]]; then
            echo "Señal $senal enviada correctamente al proceso $pid."
            exit 0
        else
            echo "Error al enviar la señal. Verifique el PID y la señal."
        fi
    else
        echo "Operación cancelada."
    fi
    exit 0
}
enviar_senal_pid()
