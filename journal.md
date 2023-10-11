# 20/09
Création du journal 
Test visualisation des versions

# 25/09
J'ai fait l'exercice du premier TD qui consiste à déplacer des fichiers pour se familiariser avec les commandes. J'ai essayé de
définir une array contenant tous les fichiers puis de faire une boucle qui les trierait en fonction de leur nom, mais je n'ai pas 
réussi, j'ai encore un peu de mal avec la syntaxe de bash. J'ai donc tapé la commande
"mv Fichiers/2016-01*.txt workspace/txt/2016/01", puis je l'ai collée en modifiant le 01 en 02, et ainsi de suite, jusqu'à 
avoir déplacé tous les fichiers. Ça ne m'a pas pris beaucoup de temps, à peine 5min, mais j'aurais aimé réussir à le faire avec
une boucle (en fait, chercher comment faire une loop m'a pris 10 fois plus de temps que taper les commandes...)

# 01/10
Cette semaine, on a commencé à apprendre à utiliser git. Je suis donc en train d'éditer ce journal sur nano; une fois que 
j'aurai fini, je ferai mon premier commit git! Ça se fête.

update : en poussant mon dossier d'exercices sur github, je me suis rendu compte que dedans il y avait mes clés ssh.
Ça m'a donné une sueur froide, mais je me suis vite rendu compte qu'il ne s'agissait pas de ma vraie clé. Je m'explique : 
lorsqu'on a créé les clés pendant la séance dernière, j'ai tapé les commandes une première fois, suite à quoi je ne 
trouvais pas le dossier .ssh dans mon home. J'ai donc tapé les commandes à nouveau, et ça avait fonctionné la deuxième fois. 
J'imagine alors que quand j'ai tapé les commandes pour la première fois, je me trouvais dans mon dossier exercice... J'ai 
supprimé les clés du dépôt git; je sais qu'on peut toujours les trouver dans l'historique des versions, mais ces clés ne 
servent à rien alors ce n'est pas très important...

# Séance 3
## Début du fichier oups.md

J'imagine que pour revenir au tag du début de séance, je devrai utiliser "git reset git-séance-3-init". Je veux garder les 
modifications apportés au fichier oups.md, mais pas nécessairement le stagging, alors "git reset" sans option soft ou hard devrait 
être adapté. Rdv tout à l'heure pour voir si ça aura marché ! Ça a pas l'air de marcher, je me retrouve avec des branches 
divergentes... Je vais essayer avec revert.

## fin du fichier oups.md

Bon... Ça a l'air d'avoir marché avec revert, mais j'ai la sensation que ça a été inutilement difficile et/ou que je ne l'ai pas fait
comme il fallait. J'ai d'abord copié le contenu du fichier oups dans le fichier journal, puis j'ai utilisé la commande revert avec
l'identifiant SHA du commit "Ajout du fichier oups.md". Git m'a ensuite dit que ça créait un conflit, et qu'il fallait que je supprime
le fichier oups.md, ce que j'ai fait. J'ai ensuite créé un commit "suppression du fichier oups.md" que j'ai push, et ça a marché.
Mais ne serait-ce pas revenu au même de supprimer directement le fichier oups.md sans revert d'abord? D'autant plus que le commit
"ajout du fichier oups.md" apparaît toujours dans le log... Bref, j'ai hâte de voir la correction mardi parce que tout ça est encore 
très flou.
