![](../Images/header.jpg)

# 15 - LÓGICA

[Vídeo Clase 4 [06/08/2025]](https://www.twitch.tv/videos/2534287084)

## Operadores

### Aritméticos

* `+` suma
* `-` resta
* `*` multiplicación
* `/` división entera
* `%` módulo

### Numéricos

* `-eq` igual
* `-ne` distinto
* `-gt` mayor
* `-lt` menor
* `-ge` mayor o igual
* `-le` menor o igual

### Cadenas

* `=` igual
* `!=` distinto
* `-z` cadena vacía
* `-n` cadena no vacía
* `>` mayor en orden alfabético (dentro de `[[ ]]`)
* `<` menor en orden alfabético (dentro de `[[ ]]`)

### Lógicos

* `&&` AND (Y)
* `||` OR (O)
* `!` NOT (NO)

### Archivos

* `-e` existe
* `-f` es un archivo regular (contiene datos legibles o binarios y no es un directorio)
* `-d` es un directorio
* `-r` tiene permisos de lectura
* `-w` tiene permisos de escritura
* `-x` es ejecutable
* `-s` existe y no está vacío

## Condicionales

Permiten ejecutar comandos sólo si se cumplen ciertas condiciones.

### if

```
if [ condición ]; then
	comando_si_verdadero
fi
```

### if con else

```
if [ condición ]; then
	comando_si_verdadero
else
	comando_por_defecto
fi
```

### if con elif

```
if [ condición ]; then
	comando_si_verdadero
elif [ condición ]; then
	comando_si_verdadero
fi
```

> [!WARNING]  
> 
> Puedes crear tantos elif como quieras, pero, en el momento que se cumple la primera condición, se dejan de evaluar las restantes.

### if con elif y else

```
if [ condición ]; then
	comando_si_verdadero
elif [ condición ]; then
	comando_si_verdadero
elif [ condición ]; then
	comando_si_verdadero
else
	comando_por_defecto
fi
```

### case

Para múltiples condiciones que evalúan un mismo valor o menús.

```
case variable in
    valor_variable) comando_si_verdadero;;
    valor_variable) comando_si_verdadero;;
    valor_variable) comando_si_verdadero;;
    ...
    *) comando_por_defecto;;
esac
```

```
#!/bin/bash
read -p "Elige una opción (a/b/c): " option
case $option in
    a) echo "Elegiste A";;
    b) echo "Elegiste B";;
    c) echo "Elegiste C";;
    *) echo "Opción no válida";;
esac
```

### Ejemplo condicionales

```
#!/bin/bash
num=25
if [ $num -ge 10 ]; then
	echo "Número mayor o igual que 10"
elif [ $num -eq 0 ]; then
	echo "Número igual a 0"
else
	echo "Condición por defecto"
fi
read -p "Elige una opción (1/2/3): " option
case $option in
	1) echo "Elegiste 1";;
	2) echo "Elegiste 2";;
	3) echo "Elegiste 3";;
	*) echo "Opción no válida";;
esac
name=Brais
if [ -n $name ]; then
	echo "El nombre existe"
fi
if [ $num -ge 18 ] && [ -n $name ]; then
	echo "Mayor de edad"
fi
if [ -e "./script.sh" ]; then
	echo "El archivo existe"
fi
```

* `$num -ge 10` → comprueba que la variable *num* sea *mayor o igual que 10*.
* `$num -eq 0` → comprueba que la variable *num* sea *igual a 10*.
* `case $option in` → inspecciona el valor de *option* para asignar el caso de ejecución correcto en base a su valor.
* `-n $name` → comprueba que la cadena asociada a *name* no esté *vacía*.
* `[ $num -ge 18 ] && [ -n $name ]` → comrpueba que *num* sea *mayor o igual que 18* y que *name* no esté *vacío*.
* `-e "./script.sh"` → comprueba que el *script existe*.

> [!NOTE] 
>  
> Script de ejemplo con condicionales: [conditionals_script.sh](../Scripts/conditionals_script.sh)

## Bucles

### for

Recorre un listado de varlores.

```
for i in 1 2 3 4 5
do
	echo "Número: $i"
done

for name in *.sh
do
    echo "Archivo: $name"
done
```

* `for i in 1 2 3 4 5` → recorre el listado de números definidos, almacenando el valor de cada iteración en la variable *i*.
* `for name in *.sh` → recorre el listado de archivos que cumplan el criterio de la extensión, almacenando el valor de cada iteración en la variable *name*.

### while

Se ejecuta mientras la condición sea verdadera.

```
count=1
while [ $count -le 5 ]
do
	echo "Contador: $count"
	((count++))
done
```

* `while [ $count -le 5 ]` → se ejecuta el bucle mientras el valor de la variable *count* sea *menor o igual que 5*.
* `((count++))` → incrementa el valor de *count* en 1 tras cada ejecución del bucle.

### until

Se ejecuta hasta que la condición sea verdadera.

```
count=1
until [ $count -gt 10 ]
do
    echo "Contador: $count"
    ((count++))
done
```

* `until [ $count -gt 10 ]` → se ejecuta el bucle hasta el valor de la variable *count* sea *mayor que 10*.
* `((count++))` → incrementa el valor de *count* en 1 tras cada ejecución del bucle.

### Control de bucles

```
for i in 1 2 3 4 5
do
	if [ $i -eq 3 ]; then
		continue
	elif [ $i -eq 4 ]; then
		break
	fi
        echo "Número: $i"
done
```

* `continue` salta la iteración y pasa a la siguiente.
* `break` sale del bucle actual.

> [!NOTE] 
>  
> Script de ejemplo con bucles: [loops_script.sh](../Scripts/loops_script.sh)

## Funciones

### Función simple

```
my_function() {
	echo "Hola desde la función"
}
my_function
```

* `my_function()` → definición
* `my_function` → invocación

### Función con parámetros

```
my_function_with_params() {
	echo "Hola $1"
}
my_function_with_params Brais

```

* `$1` → accede al primer argumento posicional
* `my_function_with_params argumento` → invocación enviando el parámetro

### Función con retorno

```
my_function_with_return() {
	return 1
}
my_function_with_return
echo $?
```

* `return` → retorna un valor desde la función
* `$?` → accede al valor del retorno fuera de la función tras su invocación

> [!TIP]
> 
> Retorna `0` como código de salida para indicar éxito en la ejecución y otro número para indicar un error.

## Variables globales y locales (ámbito)

* Variables **globales**: visibles en todo el script.
* Variables **locales**: visibles solo dentro de la función (local).

```
name=Brais # global
my_function_2() {
    local msj=", mundo" # local
    echo "Hola $msj $name"
}
echo "Hola desde fuera $msj"
my_function_2
```

* `local` → para definir variables locales.
* `echo "Hola $msj $name"` → puede acceder a las 2 variables desde su ámbito.
* `echo "Hola desde fuera $msj"` → no puede acceder a la variable local fueral del ámbito de la función.

> [!CAUTION] 
>  
> Utiliza `local` como buena práctica para definir variables locales.

> [!NOTE] 
>  
> Script de ejemplo con funciones: [functions_script.sh](../Scripts/functions_script.sh)

## Manejo básico de errores

### Códigos de salida

* `0` → Éxito
* `!=0` → Error

```
#!/bin/bash
cp file.txt ../Course
if [ $? -ne 0 ]; then
	echo "Error al copiar el archivo"
fi
```

* `cp file.txt ../Course` → intenta realizar la copia.
* `$? -ne 0` → accede al código de salida y comprueba si es distinto de cero (error).

### Atajos

* `|| command` → ejecuta el comando si hay un error.
* `$$ command` → ejecuta el comando si no hay un error.

```
cp file.txt ../Course || echo "Otra vez se ha producido el error"
cp script.sh ../Course && echo "No se ha producido un error"
```

* `||` → se ejecuta el *echo* si se produce un error en el *cp*.
* `&&` → se ejecuta el *echo* si *cp* se realiza con éxito.


> [!NOTE] 
>  
> Script de ejemplo con errores: [errors_script.sh](../Scripts/errors_script.sh)

---

[[◀️ Lección anterior](./14_SCRIPTING_EXERCISES.md)] [[Inicio 🔼](../README.md)] [[Siguiente lección ▶️](./16_LOGIC_EXERCISES.md)]