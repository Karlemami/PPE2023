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

egrep -o "\w+" $file | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\"" > fichier_bigramme_1.txt
echo $'\r' > fichier_bigramme_2.txt
egrep -o "\w+" candide.txt | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\"" >> fichier_bigramme_2.txt

paste -d " " fichier_bigramme_2.txt fichier_bigramme_1.txt | sort | uniq -c | sort -nr | head -n $nb_head > bigrammes.txt
