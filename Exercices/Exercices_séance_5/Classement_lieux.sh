if [ $# -ne 3 ]
then
    echo "Ce script demande trois arguments : l'année, le mois, et le nombre de résultats à afficher"
    exit
fi

ANNEE=$1
MOIS=$2
NB_HEAD=$3

if [[ $ANNEE =~ 20(16|17|18) ]];
then
    if [[ $MOIS =~ 0[1-9]|1[0-2] ]];
    then
        if [[ $NB_HEAD =~ [0-9]+ ]];
            then
            cat ../exercice_arborescence/ann/$ANNEE/$MOIS/* |egrep "Location" | cut -f 3 |sort |uniq -c |sort -nr |head -n $NB_HEAD
            else
            echo "L'argument NB_HEAD doit être un nombre entier"
            exit
        fi
    else
    echo "L'argument MOIS doit être un nombre compris entre 01 et 12"
    exit
    fi
else
echo "L'argument ANNEE doit être un nombre compris entre 2016 et 2018"
exit
fi
echo "a" 
