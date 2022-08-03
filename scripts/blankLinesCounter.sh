#!/bin/bash
RETURN=$(grep -c ^[[:blank:]]*$ $1) #cuenta la cantidad de lineas sin caracteres o con espacios en blanco
echo Este archivo de texto tiene $RETURN lineas en blanco
exit 0
