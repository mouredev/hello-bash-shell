#!/bin/bash

# if/elif/else
num=25
if [ $num -ge 10 ]; then
	echo "Número mayor o igual que 10"
elif [ $num -eq 0 ]; then
	echo "Número igual a 0"
else
	echo "Condición por defecto"
fi

# case
read -p "Elige una opción (1/2/3): " option
case $option in
	1) echo "Elegiste 1";;
	2) echo "Elegiste 2";;
	3) echo "Elegiste 3";;
	*) echo "Opción no válida";;
esac

# if con algunos operadores
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
