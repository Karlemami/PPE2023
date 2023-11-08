file=$1

if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier texte"
	exit
fi

egrep -o "\w+" $file | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\""