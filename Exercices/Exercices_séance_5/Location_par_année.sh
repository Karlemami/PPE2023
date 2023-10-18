NB_LOCATIONS_2016=$(cat ../exercice_arborescence/ann/2016/*/* |egrep "Location"|cut -f 3 | wc -l)
NB_LOCATIONS_2017=$(cat ../exercice_arborescence/ann/2017/*/* |egrep "Location"|cut -f 3 | wc -l)
NB_LOCATIONS_2018=$(cat ../exercice_arborescence/ann/2018/*/* |egrep "Location"|cut -f 3 | wc -l)
NB_LOCATIONS=$(cat ../exercice_arborescence/ann/*/*/* |egrep "Location"|cut -f 3 | wc -l)
echo "Locations pour l'année 2016 :$NB_LOCATIONS_2016"
echo "Locations pour l'année 2017 :$NB_LOCATIONS_2017"
echo "Locations pour l'année 2018 :$NB_LOCATIONS_2018"
echo "Locations toutes années confondues:$NB_LOCATIONS"
