#!/bin/bash
echo Listado de nombres propios dentro del texto
#Se itera por cada palabra que tenga una letra mayuscula, para luego verificar si comienza con la letra mayuscula
for NOMBREPROPIO in $(grep -o "[^ ]*[A-Z][^ ]*" $1)
do
    if [[ $NOMBREPROPIO =~ ^[A-Z] ]] #Falta contemplar las palabras que tengan varias mayusculas
    then
    echo $NOMBREPROPIO
    fi
done
exit 0
