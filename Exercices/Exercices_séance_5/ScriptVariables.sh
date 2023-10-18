if [ $# -ne 2 ]
then
    echo "Ce script demande 2 arguments"
    exit
fi

ANNEE=$1
TYPE=$2

if [[ $ANNEE =~ 20(16|17|18) ]];
    then
    if [[ $TYPE =~ Person|Organization|Location|Hour|Product|Date|Event ]];
        then
        NB_OCCURENCE_TYPE=$(cat ../exercice_arborescence/ann/$ANNEE/*/* |egrep $TYPE |wc -l)
        echo "Nombre d'annotations de type $TYPE pour l'année $ANNEE: $NB_OCCURENCE_TYPE"
        else
        echo "L'argument TYPE peut avoir uniquement avoir les valeurs suivantes : Person, Organization, Location, Hour, Product, Date, Event."
        exit
    fi
else
echo "L'argument ANNEE doit être un nombre compris entre 2016 et 2018"
exit
fi

