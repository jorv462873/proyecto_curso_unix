#!/usr/bin/env bash
#File guessinggame.sh

echo "Cuantos directorios hay, ¿Podrías adivinar?"

read response

cantidad_de_directorios=$( ls | wc -l )

function cuentaDirectorios {

local bandera=1

while [[ $bandera -eq 1 ]]

do

if [[ $response -eq $cantidad_de_directorios ]]
then
	let bandera=0
	echo "Felicidades, adivinaste"
	break
elif [[ $response -gt $cantidad_de_directorios ]]
then
	echo "Tu respuesta fue alta, vuelve a tratar"
	echo "Cuantos directorios hay, ¿Podrias adivinar?"
	read response
elif [[ $response -lt $cantidad_de_directorios ]]
then
	echo "Tu respuesta fue baja, vuelve a tratar"
	echo "Cuantos diarios hay, ¿Podrias adivinar?"
	read response
fi

done

}

cuentaDirectorios
