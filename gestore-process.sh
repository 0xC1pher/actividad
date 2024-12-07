#!/bin/bash

# Función para listar todos los procesos en ejecución
listar_procesos() {
    ps aux
}

# Función para buscar un proceso específico por nombre
buscar_proceso() {
    read -p "Ingrese el nombre del proceso: " nombre
    ps aux | grep "$nombre"
}

# Función para terminar un proceso por su ID
terminar_proceso() {
    read -p "Ingrese el ID del proceso: " pid
    kill -9 "$pid"
    echo "Proceso $pid terminado."
}

# Función para verificar si un proceso está en ejecución
verificar_proceso() {
    read -p "Ingrese el nombre del proceso: " nombre
    if ps aux | grep -q "$nombre"; then
        echo "El proceso $nombre está en ejecución."
    else
        echo "El proceso $nombre no está en ejecución."
    fi
}

# Menú principal
while true; do
    echo "Seleccione una opción:"
    echo "1. Listar todos los procesos en ejecución"
    echo "2. Buscar un proceso específico por nombre"
    echo "3. Terminar un proceso por su ID"
    echo "4. Verificar si un proceso está en ejecución"
    echo "5. Salir"
    read -p "Opción: " opcion

    case $opcion in
        1) listar_procesos ;;
        2) buscar_proceso ;;
        3) terminar_proceso ;;
        4) verificar_proceso ;;
        5) break ;;
        *) echo "Opción no válida." ;;
    esac
done
