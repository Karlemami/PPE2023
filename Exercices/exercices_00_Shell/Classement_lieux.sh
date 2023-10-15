ANNEE=$1
MOIS=$2
NB_HEAD=$3

cat ../exercice_arborescence/ann/$ANNEE/$MOIS/* |egrep "Location" | cut -f 3 |sort |uniq -c |sort -nr |head -n $NB_HEAD