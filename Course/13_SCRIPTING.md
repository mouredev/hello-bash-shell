![](../Images/header.jpg)

# 13 - SCRIPTING

[Vídeo Clase 4 [06/08/2025]](https://www.twitch.tv/videos/2534287084)

## Definición

Un script es un archivo de texto que contiene comandos que la shell ejecutará secuencialmente para permitir así automatizar tareas repetitivas.

## Convenciones en Bash

1. Extensión `.sh` (opcional, ya que Bash no la requiere).
2. Primera línea `#!/bin/bash` (shebang), para indicar con qué intérprete ejecutar el script.
3. Permisos de ejecución `chmod +x script.sh` (el archivo debe ser ejecutable para correr directamente).

## Ejemplo básico

```
#!/bin/bash
# Mi primer script
echo "Hola, este es mi primer script en Bash"
date
echo "Tu directorio actual es: $(pwd)"
```

* `#!/bin/bash` → shebang
* `# Mi primer script` → comentario (documenta, no se ejecuta)
* `echo, date` → comandos en Bash
* `"$(pwd)"` → interpolación de comandos

## Variables

```
name="Brais"
echo "Hola $name"
```

* `name="Brais"` → definición de la variable
* `"$name"` → interpolación de la variable

## Aritmética básica

Aunque Bash trata todo como texto, podemos realizar operaciones numéricas.

```
a=5
b=3
let sum=a+b
echo "La suma es $sum"
sum2=$((a+b))
echo "La suma2 es $sum2"
```

* `let` es el comando que se usa para realizar operaciones aritméticas directamente sobre variables.
* `$(( ))` es más habitual usar expansión aritmética en Bash moderno.

> [!NOTE] 
>  
> Script de ejemplo básico: [script.sh](../Scripts/script.sh)

## Lectura de datos

Permite solicitar datos interactivos durante la ejecución.

```
#!/bin/bash
echo "¿Cuál es tu nombre"
read name
echo "Hola, $name"
read -p "¿Cuál es tu edad? " age
echo "Tu edad es $age"
read -s pass
echo "Tu contraseña es $pass"
```

* `read` → solicita datos y los almacena en la variable definida.
	* `read -p` → muestra el prompt en la misma línea.
	* `read -s` → entrada oculta para contraseñas.

> [!NOTE] 
>  
> Script de ejemplo de lectura: [read_script.sh](../Scripts/read_script.sh)

## Argumentos y parámetros

Los scripts pueden recibir argumentos desde la línea de comandos.

```
#!/bin/bash
echo "El nombre del escript es: $0"
echo "El primer parámetro es: $1"
echo "El segundo parámetro es: $2"
echo "Número de parámetros: $#"
echo "Todos los argumentos: $@"
```

Ejecución con argumentos: `./script.sh argumento1 argumento2`

* `$0` accede al nombre del script (*script.sh*).
* `$1` accede al argumento en la primera posición (*argumento1*).
* `$2` accede al argumento en la segunda posición (*argumento2*).
* `$#` accede al número total de parámetros (*2*).
* `$@` accede a todos los parámetros (*argumento1 argumento2*).

> [!NOTE] 
>  
> Script de ejemplo con parámetros: [params_script.sh](../Scripts/params_script.sh)

---

[[◀️ Lección anterior](./12_PROCESS_EXERCISES.md)] [[Inicio 🔼](../README.md)] [[Siguiente lección ▶️](./14_SCRIPTING_EXERCISES.md)]