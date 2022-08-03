#!/bin/bash -ex
clear
mostrarscripts(){
SCRIPTS=$(ls scripts)" Volver" #se agrega la opcion "Volver" a la lista de scripts para elegir otro archivo de texto
	select SCRIPT in $SCRIPTS
	do
		if [ -z $SCRIPT ] #se verifica que la variable no este vacia
		then
		echo "La opción elegida no existe" #si la variable esta vacia, es porque se eligio una opcion que no estaba en la lista
		else
		./scripts/$SCRIPT "" #se ejecuta el script seleccionado
		fi
	done
}
echo "Seleccionar un archivo de texto para comenzar, si el archivo deseado no esta en la lista, agregarlo al directorio archivosdetexto"
select ITEM in $(ls archivosdetexto)
do
	clear
	echo "el contenido del archivo "$ITEM" es:"
	cat archivosdetexto/$ITEM
	mostrarscripts
done
exit 0
