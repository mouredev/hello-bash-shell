![](../Images/header.jpg)

# 1 - PRIMEROS PASOS

[Vídeo Clase 1 [16/07/2025]](https://www.twitch.tv/videos/2514962453)

## Hola mundo

Primer comando en Bash: `echo` imprime texto en pantalla.

```
echo "Hola, BASH"
```

Cómo mostrar la Shell que estamos utilizando.

```
echo $SHELL
echo $0
```

## Comandos de Orientación

* `pwd` Imprime el directorio actual.
* `ls` Lista archivos en el directorio actual.
	* Con opciones:
	* `ls -l` Muestra los archivos en formato largo.
	* `ls -a` Muestra todos los archivos, incluidos los ocultos.
	* `ls -lh` Como `-l` pero el tamaño de los archivos aparece en formato *"human-readable"*.

## Comandos de Navegación

Para cambiar de directorio utilizamos el comando `cd`.

`dir` hace referencia al directorio (carpeta) actual a la que nos queremos desplazar.

* `cd dir` Te desplaza al directorio inferior indicado (significa *"ir a un nivel inferior concreto"*).
* `cd dir/dir/dir` Para desplazarse varior directorios inferiores a la vez.
* `cd ..` Te desplaza al directorio superior al actual (significa *"un nivel arriba"*).
* `cd ../../../../` Para desplazarse varios niveles superiores a la vez.
* `cd .` Hace referencia al directorio actual.
* `cd ~` Te desplaza directamente a tu directorio personal (home).

Utiliza la **tabulación (TAB)** como ayuda para completar automáticamente comandos o visualizar archivos o directorios sugeridos.

```
cd TAB
```

## Ruta absoluta y relativa

La ruta **relativa** hace referencia al directorio actual (`pwd`). No empieza por `/` y es más corta y práctica cuando sabes donde estás.

La ruta **absoluta** indica la ubicación completa de un archivo o directorio en el sistema de archivos del operativo. Siempre empieza por `/` para representar la raíz del sistema y no depende de dónde estés en ese momento.

Por ejemplo, este comando te llevaría a la ruta indicada independientemente de donde te encuentres.

```
cd /home/user/Docs
```

## Otros comandos básicos

* `whoami` Muestra el usuario actual.
* `cal` Muestra calendario.
* `date` Muestra la fecha y hora actuales.
* `uptime` Tiempo encendido del sistema.
* `hostname` Nombre del equipo.
* `uname` Información del kernel.
* `uname -a` Información del kernel/sistema.
* `clear` Limpia la pantalla (no borra).

## Anatomía del comando

```
comando [opciones] [argumentos]
```

* `comando` es lo que quieres ejecutar (`ls`).
* `opciones` modifican el comportamiento (`-l`)
* `argumentos` son los datos sobre los que actúa (`archivo.txt`, `directorio/`)

## Ayuda y documentación

Un gran número de comandos y clientes de la terminal soportan la opción `--help` o `-h` para mostrar la ayuda.

```
python --help
python -h
```

El comando `man` abre el manual de usuario completo de un comando.

```
man ls
```

> Para salir del manual pulsamos la tecla **"q"**.

---

[[◀️ Lección anterior](./00_CONFIGURATION.md)] [[Inicio 🔼](../README.md)]