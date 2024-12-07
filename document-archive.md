#Documentación Técnica del Script en Bash
#Este script en Bash proporciona un conjunto de funciones para gestionar archivos, permitiendo crear, escribir, leer, modificar y eliminar archivos. A continuación, se detalla el propósito de cada función, las palabras reservadas utilizadas y la sintaxis.

**Funciones**
crear_archivo

Propósito: Crear un nuevo archivo.

**Palabras Reservadas**:

**read**: Lee la entrada del usuario.

**touch**: Crea un archivo vacío.

#Sintaxis:

         read -p "Ingrese el nombre del archivo: " archivo
        touch "$archivo"
        echo "Archivo $archivo creado exitosamente."
escribir_contenido

Propósito: Añadir contenido a un archivo existente.

**Palabras Reservadas**:

**read**: Lee la entrada del usuario.

if [ -f "$archivo" ]; then: Verifica si el archivo existe.

echo: Añade texto al archivo.

>>: Redirecciona la salida al archivo.

#Sintaxis:

read -p "Ingrese el nombre del archivo: " archivo
if [ -f "$archivo" ]; then
    read -p "Ingrese el contenido: " contenido
    echo "$contenido" >> "$archivo"
    echo "Contenido añadido al archivo $archivo."
else
    echo "El archivo $archivo no existe."
fi

leer_contenido

Propósito: Mostrar el contenido de un archivo.

**Palabras Reservadas**:

**read**: Lee la entrada del usuario.

if [ -f "$archivo" ]; then: Verifica si el archivo existe.

cat: Muestra el contenido del archivo.

#Sintaxis:

read -p "Ingrese el nombre del archivo: " archivo
if [ -f "$archivo" ]; then
    cat "$archivo"
else
    echo "El archivo $archivo no existe."
fi

modificar_archivo

Propósito: Modificar el contenido de un archivo utilizando un editor de texto.

#Palabras Reservadas:

**read**: Lee la entrada del usuario.

if [ -f "$archivo" ]; then: Verifica si el archivo existe.

nano: Editor de texto utilizado para modificar el archivo.

#Sintaxis:

read -p "Ingrese el nombre del archivo: " archivo
if [ -f "$archivo" ]; then
    nano "$archivo"
    echo "Archivo $archivo modificado."
else
    echo "El archivo $archivo no existe."
fi

eliminar_archivo

Propósito: Eliminar un archivo existente.

#Palabras Reservadas:

**read**: Lee la entrada del usuario.

if [ -f "$archivo" ]; then: Verifica si el archivo existe.

rm: Elimina el archivo.

#Sintaxis:

read -p "Ingrese el nombre del archivo: " archivo
if [ -f "$archivo" ]; then
    rm "$archivo"
    echo "Archivo $archivo eliminado."
else
    echo "El archivo $archivo no existe."
fi

#Menú Principal

Propósito: Proporcionar una interfaz de usuario para seleccionar y ejecutar las funciones de gestión de archivos.

#Palabras Reservadas:

while true; do: Bucle infinito.

echo: Muestra mensajes en la terminal.

read -p: Lee la entrada del usuario con un mensaje.

case $opcion in: Estructura de control para manejar diferentes opciones.

break: Termina el bucle.

#Sintaxis:

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
#Uso del Script
#El script se ejecuta en un entorno Bash y permite al usuario interactuar con archivos a través de un menú simple. Cada función está diseñada para realizar una tarea específica relacionada con la gestión de archivos, y el menú principal facilita la selección de estas funciones.

Ejemplo de Uso
Crear un archivo:

El usuario selecciona la opción 1 y proporciona un nombre de archivo.

El script crea un archivo vacío con el nombre proporcionado.

Escribir contenido en un archivo:

El usuario selecciona la opción 2, proporciona un nombre de archivo y un contenido.

El script añade el contenido al archivo especificado.

Leer el contenido de un archivo:

El usuario selecciona la opción 3 y proporciona un nombre de archivo.

El script muestra el contenido del archivo en la terminal.

Modificar un archivo:

El usuario selecciona la opción 4 y proporciona un nombre de archivo.

El script abre el archivo en el editor nano para que el usuario lo modifique.

Eliminar un archivo:

El usuario selecciona la opción 5 y proporciona un nombre de archivo.

El script elimina el archivo especificado.

Salir:

El usuario selecciona la opción 6 para salir del script.

Este script es útil para tareas básicas de gestión de archivos en un entorno Unix/Linux.
