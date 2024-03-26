all: README.md


README.md:
	echo "#Proyecto" > README.md
	echo "El script bash guessinggame tiene 39 lineas de codigo" >> README.md
	date_now=$(date "+%F-%H-%M-%S")
	echo "La fecha de ejecución del comando **MAKE** fue $date_now" >> README.md
	chmod o-w README.md
clean:
	rm README.md
