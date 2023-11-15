file=$1

#Si l'argument 1 n'est pas un fichier, alors on quitte le script et on affiche un message
if [ ! -f "$1" ]
then
	echo "Ce script demande en argument un fichier texte"
	exit
fi

egrep -o "\w+" $file | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\""