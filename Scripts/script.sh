#!/bin/bash

# Mi primer script
echo "Hola, este es mi primer script en Bash"
date
echo "Tu directorio actual es: $(pwd)"

# Variables
name="Brais"
echo "Hola $name"

# Aritmética
a=5
b=3
let sum=a+b
echo "La suma es $sum"
sum2=$((a+b))
echo "La suma2 es $sum2"
