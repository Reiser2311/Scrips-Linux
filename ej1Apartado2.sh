#!/bin/bash

read -p "Introduzca el valor de la prenda: " prenda
			read -p "Introduzca el descuento a aplicar: " descuento

			while [ $descuento -gt 50 ] || [ $descuento -lt 10 ]; do
				echo "Descuento introducido no valido"
				read -p "Vuelva a introducir el valor del descuento: " descuento
			done

			prenda=$(($prenda-$prenda*$descuento/100))

			echo "El valor con el descuento es de $prenda"