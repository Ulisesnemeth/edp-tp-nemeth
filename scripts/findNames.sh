#!/bin/bash
echo Listado de nombres propios dentro del texto
#Se itera por cada palabra que tenga una letra mayuscula por lo menos, para luego verificar si comienza con la letra mayuscula y el resto de sus letras están en minúscula
for NOMBREPROPIO in $(grep -o "[^ ]*[A-Z][^ ]*" $1)
do
    RESTO=$(echo $NOMBREPROPIO | cut -c 2-${#NOMBREPROPIO})
    PRIMERLETRA=$(echo $NOMBREPROPIO | cut -c 1-1)
    if [[ $PRIMERLETRA =~ ^[A-Z] ]] #Se comprueba que la primer letra sea mayúscula
    then
        if [[ ! $RESTO =~ [A-Z] ]] #Se comprueba que no existan otras mayusculas
        then
        echo $NOMBREPROPIO
        fi
    fi
done
exit 0