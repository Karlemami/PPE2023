file=$1

if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier texte"
	exit
fi

egrep -o "(\b\w+\b){1,2}" $file | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\""