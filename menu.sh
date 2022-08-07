#!/bin/bash
clear
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
mostrarscripts(){
	echo
	echo "Elegir una opción:"
	SCRIPTS=$(ls scripts)" Volver" #se agrega la opcion "Volver" a la lista de scripts para elegir otro archivo de texto
	select SCRIPT in $SCRIPTS
	do
		if [ -z $SCRIPT ] #se verifica que la variable no este vacia
		then
		echo "Ingrese una opción valida" #si la variable esta vacia, es porque se eligio una opcion que no estaba en la lista
		else
			if [ $SCRIPT == "Volver" ]
			then
				./menu.sh
			else
				clear
				textoSeleccionado
				echo
				echo -e "${GREEN}$SCRIPT${ENDCOLOR}"
				./scripts/$SCRIPT archivosdetexto/$ITEM #se ejecuta el script seleccionado
				mostrarscripts
			fi
		fi
	done
}
textoSeleccionado(){
	clear
	echo "Contenido del archivo elegido -> "$ITEM":"
	cat archivosdetexto/$ITEM
	echo
}
echo "Seleccionar un archivo de texto"
select ITEM in $(ls archivosdetexto)
do
	if [ -z $ITEM ] #se verifica que la variable no este vacia
	then
	echo "Ingrese una opción valida" #si la variable esta vacia, es porque se eligio una opcion que no estaba en la lista
	else
		if [ -z $(cat archivosdetexto/$ITEM) ]
		then
			echo "El archivo de texto esta vacío, seleccione un archivo de texto que tenga contenido"
		else
			textoSeleccionado
			mostrarscripts
		fi
	fi
done
exit 0