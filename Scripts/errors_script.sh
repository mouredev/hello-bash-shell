#!/bin/bash

cp file.txt ../Course
if [ $? -ne 0 ]; then
	echo "Error al copiar el archivo"
fi

cp file.txt ../Course || echo "Otra vez se ha producido el error"

cp script.sh ../Course && echo "No se ha producido un error"
