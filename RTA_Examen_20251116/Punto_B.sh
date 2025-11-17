o
echo "Para ejecutar:   ./1_for_lista.sh  2_for_cmd_lista.txt"
echo

LISTA=$1

ANT_IFS=$IFS
IFS=$'\n'
mkdir -p /tmp/Animales/{Agua,Tierra/{Mamiferos,Oviparos}}
> /tmp/Animales/animales.txt
for LINEA in `cat $LISTA |  grep -v ^#`
do
	ANIMAL=$(echo  $LINEA |awk -F ' ' '{print $1}')
	GRUPO=$(echo  $LINEA |awk -F ' ' '{print $2}')
	if [[ $GRUPO == "AG" ]]; then
		> /tmp/Animales/Agua/${ANIMAL}.txt
		echo "20241119 - Animal: $ANIMAL - Habitat: $GRUPO" >> /tmp/Animales/Agua/${ANIMAL}.txt	
	elif [[ $GRUPO == "TM" ]]; then
		> /tmp/Animales/Tierra/Mamiferos/${ANIMAL}.txt
		echo "20241119 - Animal: $ANIMAL - Habitat: $GRUPO" >> /tmp/Animales/Tierra/Mamiferos/${ANIMAL}.txt
	elif [[ $GRUPO == "TO" ]]; then
		> /tmp/Animales/Tierra/Oviparos/${ANIMAL}.txt
		echo "20241119 - Animal: $ANIMAL - Habitat: $GRUPO" >> /tmp/Animales/Tierra/Oviparos/${ANIMAL}.txt
	fi
	echo "20241119 - Animal: $ANIMAL - Habitat: $GRUPO" >> /tmp/Animales/animales.txt
done
IFS=$ANT_IFS
