#Palabras Reservadas
if: Se utiliza para la toma de decisiones condicionales.

then: Indica el bloque de código que se ejecutará si la condición del if es verdadera.

else: Indica el bloque de código que se ejecutará si la condición del if es falsa.

fi: Finaliza un bloque if.

case: Se utiliza para la toma de decisiones múltiples.

esac: Finaliza un bloque case.

while: Se utiliza para crear bucles que se ejecutan mientras una condición sea verdadera.

do: Indica el bloque de código que se ejecutará en un bucle while.

done: Finaliza un bloque while.

#function: Define una función en Bash.

break: Sale de un bucle.

exit: Termina el script y devuelve un código de estado.

#Funciones
#verificar_gpg: 
Verifica si GPG está instalado y ofrece instalarlo si no lo está.

#crear_copia_seguridad: 
Crea una copia de seguridad de un directorio especificado por el usuario.

#eliminar_copia_seguridad: 

#Elimina una copia de seguridad específica.

#listar_copias_seguridad: 
Lista todas las copias de seguridad disponibles.

**Métodos y Atributos**
mkdir -p: Crea un directorio y sus padres si no existen.

echo: Imprime texto en la salida estándar.

read: Lee la entrada del usuario.

command -v: Verifica si un comando está disponible en el sistema.

source: Ejecuta comandos desde un archivo en el shell actual.

tar -czf: Crea un archivo comprimido con tar y gzip.

rm -f: Elimina archivos de forma forzada.

ls -lh: Lista archivos en formato largo con tamaños legibles.

gpg --encrypt --recipient: Encripta un archivo con GPG para un destinatario específico.

**Objetos**
BACKUP_DIR: Variable que almacena la ruta del directorio donde se guardarán las copias de seguridad.

dir: Variable que almacena el directorio que el usuario desea respaldar.

fecha: Variable que almacena la fecha y hora actual en un formato específico.

backup_file: Variable que almacena la ruta completa del archivo de copia de seguridad.

instalar_gpg: Variable que almacena la respuesta del usuario sobre si desea instalar GPG.

encriptar: Variable que almacena la respuesta del usuario sobre si desea encriptar la copia de seguridad.

backup_name: Variable que almacena el nombre de la copia de seguridad que el usuario desea eliminar.

opcion: Variable que almacena la opción seleccionada por el usuario en el menú principal.

#Otros
/etc/os-release: Archivo que contiene información sobre la distribución del sistema operativo.

#$ID: Variable que almacena el identificador de la distribución del sistema operativo.
