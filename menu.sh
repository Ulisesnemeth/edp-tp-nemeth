#!/bin/bash
select ITEM in $(ls archivosdetexto)
do
	echo $ITEM
done
exit 0
