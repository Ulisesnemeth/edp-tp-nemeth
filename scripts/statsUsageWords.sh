#!/bin/bash
PALABRAS=""
for PALABRA in $(cat $1 | tr -d [:punct:])
do
    if [[ ${#PALABRA} > 3 ]]
    then
        PALABRAS=${PALABRAS}" "${PALABRA^}
    fi
done
CONTADOR=0
echo Top de palabras mas usadas:
for i in $(sort <<< $(grep -o "[^ ]*[^ ]*" <<< $PALABRAS) | uniq -c)
do
    CONTADOR=$(($CONTADOR+1))
    if [ $CONTADOR -lt 21 ]&& [ $(($CONTADOR%2)) -eq 0 ]
    then
        echo $i
    fi
done
exit 0
