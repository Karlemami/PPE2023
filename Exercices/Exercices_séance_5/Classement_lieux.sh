ANNEE=$1
MOIS=$2
NB_HEAD=$3
if [ $# -ne 3 ]
then
    echo "Ce script demande trois arguments : l'année, le mois, et le nombre de résultats à afficher"
    exit
fi
if [ $ANNEE -ne 2016 | 2017 | 2018 ]
then
    echo "Le premier argument doit être une année entre 2016 et 2018"
    exit
fi
cat ../exercice_arborescence/ann/$ANNEE/$MOIS/* |egrep "Location" | cut -f 3 |sort |uniq -c |sort -nr |head -n $NB_HEAD