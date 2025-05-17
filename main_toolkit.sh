#!/bin/bash

# Función para mostrar el encabezado ya que se utilizará en los distintos menúes

mostrar_encabezado() {
    clear
    echo "=============================================="
    echo "     TOOLKIT DE ADMINISTRACIÓN DE SISTEMA"
    echo "=============================================="
    echo "Recuerde ejecutar este programa como root"
    echo "Usuario actual: $(whoami)"
    echo "=============================================="
    echo
}

mostrar_opcion_invalida() {
    echo "Opción inválida. Por favor, intente nuevamente."
    echo
}
# Función para mostrar el menú principal
mostrar_menu_principal() {
    echo "MENÚ PRINCIPAL:"
    echo "1. Gestión de Procesos"
    echo "2. [No implementado - Evidencia 3] Gestión de Memoria"
    echo "3. [No implementado - Evidencia 3] Gestión de Disco"
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
        2|3|4|5)
            mostrar_encabezado
            echo "Funcionalidad aún no implementada."
            echo
            echo "Presione ENTER para continuar..."
            read
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
            read
            ;;
    esac
done