#!/bin/bash

continuar="true"
contador=0
while [ $continuar = "true" ]; do
    read -p "Introduce el nombre de un directorio o fichero valido: " ruta

    if [ -e $ruta ]; then
        if [ -e $ruta ]; then
            lineas=$(wc -l $ruta)
            for ((i=0; i<2; i++)); do
                read -p "Cuantas lineas tiene el archivo?: " usuario

                if [ $lineas = $usuario ]; then
                    echo "Correcto!"
                    break
                else
                    echo "Incorrecto"
                fi
            done
        fi

        if [ -d $ruta ]; then
            lineas=$(ls -l $ruta | wc -l)
            lineas=$(($lineas-1))
            for ((i=0; i<2; i++)); do
                read -p "Cuantos ficheros tiene el directorio?: " usuario

                if [ $lineas = $usuario ]; then
                    echo "Correcto!"
                    break
                else
                    echo "Incorrecto"
                fi
            done

        fi

        read -p "Desea continuar (s/n): " cont

        if [ "$cont" = "n" ] || [ "$cont" == "N" ]; then
            continuar="false"
        fi
        contador=$contador+1
    else
        echo "Ruta no valida"
        exit 1
    fi
done

echo "Se ha jugado $contador veces"



