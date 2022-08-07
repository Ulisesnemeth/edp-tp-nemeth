#!/bin/bash
CONTADOR=0
ACUMULADOR=0
for PALABRA in $(grep -o "[^ ]*[^ ]*" $1 | tr -d [:punct:]) #Se itera en una lista de las palabras del archivo elegido, quitandoles los caracteres de puntuación
do
    if [ $CONTADOR == 0 ]   #Se aprovecha la primer palabra para crear las variables que tienen la longitud de la palabra mas larga y la mas corta
    then
        PALABRAMASLARGA=${#PALABRA}
        PALABRAMASCORTA=${#PALABRA}
    else
        if [[ $PALABRAMASLARGA < ${#PALABRA} ]]
        then
            PALABRAMASLARGA=${#PALABRA}
            else
                if [[ $PALABRAMASCORTA > ${#PALABRA} ]]
                then
                    PALABRAMASCORTA=${#PALABRA}
                fi
        fi
    fi
    CONTADOR=$(($CONTADOR + 1))
    ACUMULADOR=$(($ACUMULADOR + ${#PALABRA}))
done
echo La palabra mas larga es de $PALABRAMASLARGA letras
echo La palabra mas corta es de $PALABRAMASCORTA letras
echo La longitud promedio de las palabras es de $(($ACUMULADOR/$CONTADOR)) letras
exit 0
