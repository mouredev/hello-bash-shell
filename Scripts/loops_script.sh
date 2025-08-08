#!/bin/bash

# for
for i in 1 2 3 4 5
do
	echo "Número: $i"
done
for name in *.sh
do
    echo "Archivo: $name"
done

# while
count=1
while [ $count -le 5 ]
do
	echo "Contador: $count"
	((count++))
done

# until
count=1
until [ $count -gt 10 ]
do
    echo "Contador: $count"
    ((count++))
done

# Control de bucles
for i in 1 2 3 4 5
do
	if [ $i -eq 3 ]; then
		continue
	elif [ $i -eq 4 ]; then
		break
	fi
        echo "Número: $i"
done
