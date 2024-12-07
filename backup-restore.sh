#!/bin/bash

# Directorio donde se almacenarán las copias de seguridad
BACKUP_DIR="/backup"

# Verificar y crear el directorio de respaldo si no existe
if [ ! -d "$BACKUP_DIR" ]; then
    if mkdir -p "$BACKUP_DIR"; then
        echo "Directorio de respaldo creado en $BACKUP_DIR."
    else
        echo "No se pudo crear el directorio $BACKUP_DIR. Verifique los permisos."
        exit 1
    fi
fi

# Función para crear copias de seguridad
crear_copia_seguridad() {
    read -p "Ingrese el directorio que desea respaldar: " dir
    if [ -d "$dir" ]; then
        fecha=$(date +"%Y%m%d%H%M%S")
        backup_file="$BACKUP_DIR/backup_$fecha.tar.gz"
        tar -czf "$backup_file" "$dir" 2>/dev/null
        echo "Copia de seguridad creada en $backup_file."
    else
        echo "El directorio $dir no existe."
    fi
}

# Función para eliminar copias de seguridad específicas
eliminar_copia_seguridad() {
    read -p "Ingrese el nombre de la copia de seguridad que desea eliminar: " backup_name
    backup_file="$BACKUP_DIR/$backup_name"
    if [ -f "$backup_file" ]; then
        rm -f "$backup_file"
        echo "Copia de seguridad $backup_name eliminada."
    else
        echo "La copia de seguridad $backup_name no existe."
    fi
}

# Función para listar copias de seguridad
listar_copias_seguridad() {
    echo "Copias de seguridad disponibles en $BACKUP_DIR:"
    ls -lh "$BACKUP_DIR"
}

# Menú principal
while true; do
    echo "Seleccione una opción:"
    echo "1. Crear copia de seguridad"
    echo "2. Listar copias de seguridad"
    echo "3. Eliminar copia de seguridad específica"
    echo "4. Salir"
    read -p "Opción: " opcion

    case $opcion in
        1) crear_copia_seguridad ;;
        2) listar_copias_seguridad ;;
        3) eliminar_copia_seguridad ;;
        4) break ;;
        *) echo "Opción no válida." ;;
    esac
done
