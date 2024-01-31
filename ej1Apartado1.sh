#!/bin/bash

read -p "Introduzca un numero para calcular su factorial: " numero

    factorial=1
    for ((i=$numero; i>0; i--)); do
        factorial=$(($factorial*$i))
    done
    echo "El factorial de $numero es $factorial"