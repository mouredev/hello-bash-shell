![](../Images/header.jpg)

# 3 - GESTIÓN DE ARCHIVOS

[Vídeo Clase 2 [23/07/2025]](https://www.twitch.tv/videos/2520958017)

## Sistema de archivos Unix

Los sistemas de archivos Unix están organizados por un único árbol jerárquico que empieza por `/`, llamado raíz.

### Directorios por defecto más típicos:

* `/` Raíz del sistema.
* `/home` Directorios personales de los usuarios.
* `/etc` Archivos de configuración del sistema.
* `/bin` Programas básicos.
* `/usr` Programas del usuario.
* `/var` Datos variables del sistema (registros, logs, colas...).
* `/tmp` Archivos temporales.

Puedes **explorar** un directorio sin encontrarte en él haciendo referencia a su ruta absoluta o relativa.

```
ls /
```

## Manipulación

### Creación de un archivo:

* `touch nombre_archivo` Crea un nuevo archivo en el directorio actual.

### Creación de un directorio:

* `mkdir nombre_carpeta` Crea un nuevo directorio en el directorio actual.
* `mkdir dir/nombre_carpeta` Crea un nuevo directorio en el directorio seleccionado.

### Eliminación de un directorio vacío:

* `rmdir nombre_carpeta` Elimina un directorio vacío (sólo funciona si la carpeta está vacía).

### Copia de un archivo o directorio:

* `cp nombre_archivo copia_archivo` Copia un archivo a otro en el directorio (como siempre, puede definirse otro directorio de destino).
	* `cp -r nombre_carpeta nombre_carpeta_copia` Copia recursiva de todos los archivos y subdirectorios (no preserva atributos especiales como permisos, propietarios, marcas de tiempo o enlaces simbólicos). Se usa cuando sólo quieres el contenido, no una copia exacta.
	* `cp -a nombre_carpeta nombre_carpeta_copia` Copia recursiva exacta.

### Movimiento o renombramiento de un archivo o directorio:
	
* `mv nombre_archivo dir` Mueve un archivo a un directorio.
* `mv nombre_carpeta dir` Mueve un directorio a otro.
* `mv nombre_carpeta_o_archivo nuevo_nombre` Renombra el directorio o archivo.

### Eliminación de archivos o directorios:

* `rm nombre_archivo` Elimina un archivo. 
* `rm -r nombre_carpeta` Elimina un directorio y todo su contenido de manera recursiva.
* `rm -ri nombre_carpeta` Modo de eliminación recursiva con confirmación interactiva.

> [!CAUTION]
>
> ⚠️ El comando `rm` No se envía a la papelera. Cuidado con lo que se borra.
> 
> ✋ La opción `f` (force) en `rm -rf` es muy peligrosa ya que no pide confirmación ni muestra errores si el directorio no existe.

## Wildcard (comodines)

Los comodines permiten trabajar con varios archivos de forma rápida. Se pueden combinar entre ellos. Se pueden combinar con diferentes comandos.

* `*` Cero o más caracteres.
* `?` Exactamente un caracter.

### Ejemplos:

* `ls *.md` Muestra todos los archivos con la extensión *md*.
* `ls *.txt` Muestra todos los archivos con la extensión *txt*.
* `ls 03*` Muestra todos los archivos que comienzan por *03*.
* `ls 03*.txt` Muestra todos los archivos que comienzan por *03* y tienen la extensión *txt*.
* `ls ?????*` Muestra todos los archivos que tienen 5 o más caracteres.
* `rm ?.txt` Elimina todos los archivos con un nombre de un único caracter y la extensión *txt*.
* `rm a????` Elimina todos los archivos que comiencen por *a* y tengan 5 caracteres.

> [!TIP]
>
> Puedes realizar combinaciones de todo tipo con comandos y comodines.

## Listados avanzados

* `tree` Muestra un árbol de directorios y archivos.
	* `tree -a` Muestra también los directorios y archivos ocultos.
* `find . -name "nombre"` Encuentra archivos por nombre en el directorio actual.
	* `find dir -name "*.log"` Encuentra archivos por criterio de búsqueda (todos los *log*, por ejemplo) en el directorio especificado.

> [!NOTE]
>
> El comando `tree` no está instalado por defecto. Ten en cuenta cómo hacerlo según tu sistema operativo y el gestor de paquetes empleado (por ejemplo *apt* o *homebrew*, entre otros).

---

[[◀️ Lección anterior](./02_FIRST_STEPS_EXERCISES.md)] [[Inicio 🔼](../README.md)] [[Siguiente lección ▶️](./04_FILE_MANAGEMENT_EXERCISES.md)]