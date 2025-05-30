#!/bin/bash

# Función para mostrar el encabezado ya que se utilizará en cada menú
mostrar_encabezado() {
    clear
    echo
    echo "=============================================="
    echo "     TOOLKIT DE ADMINISTRACIÓN DE SISTEMA"
    echo "=============================================="
    echo "Recuerde ejecutar este programa como root"
    echo "Usuario actual: $(whoami)"
    echo "=============================================="
    echo
}

# Función para mostrar mensaje de opción inválida y pausar para que se lea el mensaje
mostrar_opcion_invalida() {
    echo "Opción inválida. Por favor, intente nuevamente."
    echo
    read -r -p "Presione ENTER para volver al menú..." dummy_var
    echo
}

# Función para mostrar el menú principal
mostrar_menu_principal() {
    echo "MENÚ PRINCIPAL:"
    echo "1. Gestión de Procesos"
    echo "2. Gestión de Memoria"
    echo "3. Gestión de Disco"
    echo "4. [No implementado - Proyecto Final] Gestión de Usuarios"
    echo "5. [No implementado - Proyecto Final] Gestión de Seguridad"
    echo "0. Salir"
    echo
    echo -n "Seleccione una opción: "
}

# Bucle principal del programa
while true; do
    mostrar_encabezado
    mostrar_menu_principal
    read opcion

    case $opcion in
        1)
            # Llamada al script de gestión de procesos
            ./procesos/procesos.sh
            ;;
        2)
            # Llamada al script de gestión de procesos
            ./Memoria/memoria.sh
            ;;
        3)
            # Llamada al script de gestión de procesos
            ./Disco/disco.sh
            ;;
        4|5)
            mostrar_encabezado
            echo "Funcionalidad aún no implementada."
            echo
            read -r -p "Presione ENTER para volver al menú..." dummy_var
            echo
            ;;
        0)
            clear
            echo "Gracias por utilizar el Toolkit de Administración."
            echo "Saliendo..."
            exit 0
            ;;
        *)
            mostrar_encabezado
            mostrar_opcion_invalida
            ;;
    esac
done
