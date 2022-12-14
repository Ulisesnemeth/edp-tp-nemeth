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
		echo -e "${RED}Ingrese una opción válida${ENDCOLOR}" #si la variable esta vacia, es porque se eligio una opcion que no estaba en la lista
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
				echo  ___________________________________________
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
	echo -e "${RED}Ingrese una opción válida${ENDCOLOR}"
	else
		if [ -z $(cat archivosdetexto/$ITEM) ]
		then
			echo -e "${RED}El archivo de texto $ITEM esta vacío, seleccione un archivo de texto que tenga contenido${ENDCOLOR}"
		else
			textoSeleccionado
			echo  ___________________________________________
			mostrarscripts
		fi
	fi
done
exit 0
