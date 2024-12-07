#!/bin/bash

# Función para crear un archivo
crear_archivo() {
    # shellcheck disable=SC2162
    read -p "Ingrese el nombre del archivo: " archivo
    touch "$archivo"
    echo "Archivo $archivo creado exitosamente."
}

# Función para escribir contenido en un archivo
escribir_contenido() {
    read -p "Ingrese el nombre del archivo: " archivo
    if [ -f "$archivo" ]; then
        read -p "Ingrese el contenido: " contenido
        echo "$contenido" >> "$archivo"
        echo "Contenido añadido al archivo $archivo."
    else
        echo "El archivo $archivo no existe."
    fi
}

# Función para leer el contenido de un archivo
leer_contenido() {
    read -p "Ingrese el nombre del archivo: " archivo
    if [ -f "$archivo" ]; then
        cat "$archivo"
    else
        echo "El archivo $archivo no existe."
    fi
}

# Función para modificar un archivo
modificar_archivo() {
    read -p "Ingrese el nombre del archivo: " archivo
    if [ -f "$archivo" ]; then
        nano "$archivo"
        echo "Archivo $archivo modificado."
    else
        echo "El archivo $archivo no existe."
    fi
}

# Función para eliminar un archivo
eliminar_archivo() {
    read -p "Ingrese el nombre del archivo: " archivo
    if [ -f "$archivo" ]; then
        rm "$archivo"
        echo "Archivo $archivo eliminado."
    else
        echo "El archivo $archivo no existe."
    fi
}

# Menú principal
while true; do
    echo "Seleccione una opción:"
    echo "1. Crear un archivo"
    echo "2. Escribir contenido en un archivo"
    echo "3. Leer el contenido de un archivo"
    echo "4. Modificar un archivo"
    echo "5. Eliminar un archivo"
    echo "6. Salir"
    read -p "Opción: " opcion

    case $opcion in
        1) crear_archivo ;;
        2) escribir_contenido ;;
        3) leer_contenido ;;
        4) modificar_archivo ;;
        5) eliminar_archivo ;;
        6) break ;;
        *) echo "Opción no válida." ;;
    esac
done
