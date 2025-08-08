#!/bin/bash

# Función
my_function() {
	echo "Hola desde la función"
}
my_function

# Función con parámetros
my_function_with_params() {
	echo "Hola $1"
}
my_function_with_params Brais

# Función con retorno

my_function_with_return() {
	return 1
}
my_function_with_return
echo $?

# Variables globales y locales

name=Brais # global
my_function_2() {
    local msj=", mundo" # local
    echo "Hola $msj $name"
}
echo "Hola desde fuera $msj"
my_function_2
