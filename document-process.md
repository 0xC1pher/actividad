#Documentación Técnica del Script en Bash
#Este script en Bash proporciona un conjunto de funciones para gestionar procesos en un sistema Unix/Linux, permitiendo listar todos los procesos, buscar un proceso específico, terminar un proceso por su ID y verificar si un proceso está en ejecución. A continuación, se detalla el propósito de cada función, las palabras reservadas utilizadas y la sintaxis.

#Funciones
listar_procesos

Propósito: Listar todos los procesos en ejecución.

#Palabras Reservadas:

ps aux: Muestra todos los procesos en ejecución.

**Sintaxis**:

ps aux
#buscar_proceso

Propósito: Buscar un proceso específico por nombre.

#Palabras Reservadas:

read -p: Lee la entrada del usuario con un mensaje.

ps aux: Muestra todos los procesos en ejecución.

grep: Filtra los procesos por el nombre proporcionado.

#Sintaxis:

read -p "Ingrese el nombre del proceso: " nombre
ps aux | grep "$nombre"
terminar_proceso

Propósito: Terminar un proceso por su ID.

#Palabras Reservadas:

read -p: Lee la entrada del usuario con un mensaje.

kill -9: Termina el proceso con el ID proporcionado.

**Sintaxis**:

read -p "Ingrese el ID del proceso: " pid
kill -9 "$pid"
echo "Proceso $pid terminado."
#verificar_proceso

Propósito: Verificar si un proceso está en ejecución.

#Palabras Reservadas:

read -p: Lee la entrada del usuario con un mensaje.

ps aux: Muestra todos los procesos en ejecución.

grep -q: Filtra los procesos por el nombre proporcionado y devuelve un estado de salida.

if: Verifica si el proceso está en ejecución.

**Sintaxis**:

read -p "Ingrese el nombre del proceso: " nombre
if ps aux | grep -q "$nombre"; then
    echo "El proceso $nombre está en ejecución."
else
    echo "El proceso $nombre no está en ejecución."
fi
#Menú Principal
Propósito: Proporcionar una interfaz de usuario para seleccionar y ejecutar las funciones de gestión de procesos.

#Palabras Reservadas:

while true; do: Bucle infinito.

echo: Muestra mensajes en la terminal.

read -p: Lee la entrada del usuario con un mensaje.

case $opcion in: Estructura de control para manejar diferentes opciones.

break: Termina el bucle.

**Sintaxis**:

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
#Uso del Script
#El script se ejecuta en un entorno Bash y permite al usuario interactuar con procesos a través de un menú simple. Cada función está diseñada para realizar una tarea específica relacionada con la gestión de procesos, y el menú principal facilita la selección de estas funciones.

Ejemplo de Uso
Listar todos los procesos en ejecución:

El usuario selecciona la opción 1.

El script muestra todos los procesos en ejecución.

Buscar un proceso específico por nombre:

El usuario selecciona la opción 2 y proporciona un nombre de proceso.

El script muestra los procesos que coinciden con el nombre proporcionado.

Terminar un proceso por su ID:

El usuario selecciona la opción 3 y proporciona el ID del proceso.

El script termina el proceso con el ID especificado.

Verificar si un proceso está en ejecución:

El usuario selecciona la opción 4 y proporciona un nombre de proceso.

El script verifica si el proceso está en ejecución y muestra un mensaje correspondiente.

Salir:

El usuario selecciona la opción 5 para salir del script.

Este script es útil para tareas básicas de gestión de procesos en un entorno Unix/Linux.
