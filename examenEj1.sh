#!/bin/bash

while true; do
	echo "1. Factorial"
	echo "2. Descuento"
	echo "3. Salida"

	read -p "Elige una opcion del menu: " opcion

	case $opcion in
		1)
			./ej1Apartado1.sh
			;;
		2)
			./ej1Apartado2.sh
			;;
		3)
			echo "Saliendo"
			exit 0
			;;
		*)
			echo "Valor introducido no valido"
			;;
	esac
done
