file=$1 
nb_head=$2

if [ $# -lt 1 ]
then
	echo "Ce script demande en argument un fichier texte"
	exit
fi
if [ -z "$2" ]
then
    nb_head=25
fi

bash script_traitement_fichier.sh $file | sort | uniq -c| sort -nr | head -n $nb_head