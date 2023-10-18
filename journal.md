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

#  Séance 3
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

# Séance 4

Cette semaine, on a vu les pipelines et les scripts. Ça va, j'ai l'impression d'avoir bien compris; et mes scripts marchent. Le seul 
petit truc que j'aurais aimé pouvoir faire, c'est pouvoir déclarer et appeler une variable en même temps. Par exemple, la variable $DATE 
pour le chemin des fichiers, il m'a fallu d'abord la déclarer en faisant DATE=$1, puis l'appeler dans le chemin. J'aurais aimé pouvoir 
faire quelque chose comme ann/DATE=$1, mais ça ne fonctionne pas. Peut-être trouverai-je un moyen plus simple plus tard...

Tout content d'avoir réussi mes exercices, je me suis dépêché de tout push avec le tag... Avant de remplir le journal... Je vais essayer 
de changer le tag de commit, j'imagine que c'est possible.

En effet, c'était possible avec git tag --force <nom du tag> <ID du commit où mettre le tag>. Étant donné qu'il faut utiliser l'option 
--force, j'imagine que c'est quelque chose qu'il vaut mieux éviter de faire (c'est aussi ce que semblait dire l'inconnu qui m'a fourni 
cette commande sur stackoverflow (je sais que c'est pas bien de copier le code d'inconnus sur stackoverflow, mais bon celui-ci je 
comprenais ce qu'il faisait)).

# Séance 5

Cette semaine, on a vu un peu plus de fonctions relatives aux scripts bash, comme les boucles et les conditions. Pour les exercices, il 
fallait refaire les scripts de la semaine précédente, mais cette fois-ci en s'assurant que l'on rentrait bien le bon nombre d'arguments. 
Je me suis aussi amusé à m'assurer que l'argument était du bon type (pour les années, soit 2016, soit 2017, soit 2018 par exemple). 
C'était assez facile à comprendre, mais vraiment pas très user-friendly si on compare ça à Python par exemple... J'ai un peu galéré à 
trouver où mettre les espaces dans les conditions, c'est vraiment pas intuitif, mais j'imagine que c'est une question d'habitude.


Côté projet, avec Manon et Lucile, on aimerait bien choisir un mot dont les connotations peuvent changer selon la langue, par 
exemple si ce mot est associé à des adjectifs plutôt positifs ou négatifs,ce genre de choses. Mais j'ai l'impression que ça reléverait 
plutôt d'une analyse sémantique, alors que les attentes du projet semblent être plutôt syntaxique. Pour l'instant, on a pensé au mot 
"socière", mais on n'est pas encore sur·e·s.
