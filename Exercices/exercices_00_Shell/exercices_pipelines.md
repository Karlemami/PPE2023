# Exercices de la page 29 du diapo 00-shell.pdf

pwd : Exercices/exercice_arborescence/ann
- Compter le nombre d'annotations par année:
cat 2016/*/* |wc -l
cat 2017/*/* |wc -l 
cat 2018/*/* |wc -l 

-Limiter ce comptage aux lieux:
cat 2016/*/* |egrep "Location" |wc -l

-Sauvegarder ces résultats dans un seul fichier:
cat 2016/*/* |egrep "Location" |wc -l >results.txt
cat 2017/*/* |egrep "Location" |wc -l >>results.txt
cat 2018/*/* |egrep "Location" |wc -l >>results.txt

-Établir le classement des lieux les plus cités:
cat */*/* |egrep "Location" |cut -f 3 |sort |uniq -c |sort -n

-Trouver les annotations les plus fréquentes pour votre mois de naissance, toutes années confondues
cat */*/* |egrep "\bmars\b" |sort|uniq -c |sort -n

