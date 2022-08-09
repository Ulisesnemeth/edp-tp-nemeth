#!/bin/bash
ORACIONCOMPLETA=""
for PALABRA in $(cat $1)
do
    ORACIONCOMPLETA=${ORACIONCOMPLETA}$PALABRA
done

ACUMULADOR=0
CONTADOR=0
for ORACION in $(echo $ORACIONCOMPLETA | tr "." "\n")
do
    if [ $CONTADOR == 0 ]
    then
        ORACIONMASLARGA=${#ORACION}
        ORACIONMASCORTA=${#ORACION}
    else
        if [[ $ORACIONMASLARGA < ${#ORACION} ]]
        then
            ORACIONMASLARGA=${#ORACION}
        else
                if [[ $ORACIONMASCORTA > ${#ORACION} ]]
                then
                    ORACIONMASCORTA=${#ORACION}
                fi
        fi
    fi
    CONTADOR=$(($CONTADOR + 1))
    ACUMULADOR=$(($ACUMULADOR + ${#ORACION}))
done
ACUMULADORCONDECIMALES=$((($ACUMULADOR * 100)/$CONTADOR))
echo La oración mas larga tiene $ORACIONMASLARGA caracteres
echo La oración mas corta tiene $ORACIONMASCORTA caracteres
echo La longitud promedio de las oraciones es de $(cut -c 1-1 <<< $ACUMULADORCONDECIMALES),$(cut -c 2-3 <<< $ACUMULADORCONDECIMALES) caracteres
exit 0
