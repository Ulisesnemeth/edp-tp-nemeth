#!/bin/bash
echo "Seleccionar un archivo de texto para comenzar"
select ITEM in $(ls archivosdetexto)
do
	cat archivosdetexto/$ITEM
done
exit 0
