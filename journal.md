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

En effet, c'était possible avec git tag --force `<nom du tag> <ID du commit où mettre le tag>`. Étant donné qu'il faut utiliser l'option 
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

En vérifiant une dernière fois mes scripts avant de push le tag, je me suis rendu compte d'un comportement bizarre. Dans le script 
"ScriptVariables.sh", je veux m'assurer que l'argument TYPE que l'on passe correspond bien à un type d'annotation dans les fichiers : 
Person, Organization, Location, Hour, Product, Date ou Event. Ma condition marche bien; si j'écris quelque chose d'autres que ces 
conditions, le script renvoie bien mon message d'erreur et se ferme. Mais si je répète la dernière lettre d'un de ces types, ça passe 
quand même la condition. Par exemple si je fournis l'argument "Dateeeeeeeeee" pour type, ça passe la condition et continue l'éxecution 
du script. J'ai aucune idée de ce qui peut causer ce comportement...

# Séance 6

Cette séance, exercice pratique sur des URLS. On a un fichier d'URL, il faut output dans un fichier txt les valeurs suivantes séparées par des tabulations : le numéro de l'URL dans le fichier; l'URL; le code réponse HTTP obtenu lors d'une requête HTTP sur cette URL; l'encodage de la page. 

J'ai facilement réussi à output le numéro de la ligne suivi du lien suivi du résultat de la requête HTTP, mais ensuite j'ai passé beaucoup de temps à chercher un moyen de régler les erreurs de redirection (code 301 et 302). En utilisant l'option -L, cURL suit les redirections, mais l'option -I combinée à l'option -L affiche les informations de toutes les pages intermédiaires, là où je voudrais garder uniquement les informations de la dernière page afin d'en extraire la première ligne, qui correspond au numéro de résultat de la requête, mais il semblerait que c'est assez difficile à faire. J'ai découvert la fonction awk, qui permet de rechercher un pattern dans un texte et d'y faire une action. J'ai essayé d'écrire quelque chose qui me permettrait d'extraire le dernier paragraphe de mon output, qui correspondrait donc aux informations de la dernière page des redirections, mais ça ne marche pas (j'ai essayé la chose suivante : `pipeline | awk 'BEGIN { RRS = "\n" } { print $0 }'`), mais je ne comprends même pas le résultat, ça a l'air de séparer chaque ligne de en plusieurs lignes de manière relativement arbitraire...

Update : j'ai réussi ! Finalement j'ai utilisé une expression régulière sur mon output pour rechercher toutes les occurences de "HTTP"; donc a priori les lignes qui indiquent le résultat de la requête (j'espère que dans les informations des pages il ne peut pas y avoir d'autres occurences de "HTTP" que pour cette ligne-là, sinon ça casserait tout), et ensuite je sélectionne le dernier élément de ces "HTTP" avec `tail -1`; ça renvoie donc le résultat de la requête HTTP de la dernière redirection s'il y en a eu, et le résultat de la seule requête s'il n'y a pas eu de redirection. Quel soulagement d'avoir trouvé cette solution alternative !!! awk était vraiment en train de me rendre fou !

Je suis ensuite passé à l'encodage de la page, je pensais que ce serait facile, une petite expression régulière avec "charset" et ce serait dans la poche, mais je me suis vite heurté à un autre problème : dans mon output, le résultat de la requête n'étaient pas séparés par une tabulation, mais par un retour à la ligne. J'ai mis un peu de temps à me rendre compte que c'était parce que mon expression régulière en "HTTP" attrapait aussi le retour à la ligne, puisque je capture toute la ligne... J'ai réglé ce problème avec la fonction tr -d sur les caractères "\r\n"

Dernière chose : je me suis rendu compte que j'utilisais cURL deux fois, une fois pour obtenir le codé réponse, et une autre fois pour obtenir l'encodage, ce qui n'est pas optimal niveau performances, puisque je lance deux fois la même fonction au lieu de stocker son résultat dans une variable pour pouvoir le réutiliser plus tard. C'est ce que j'ai fait; j'éxecute d'abord `cURL -L -I $line`, et je stocke le résultat dans cette commande dans une variable `infos_page`, sur laquelle j'applique ensuite mes pipelines pour isoler le code réponse et l'encodage. Le script s'éxecute ainsi beaucoup plus vite, puisqu'il fait deux fois moins de requêtes HTTP. J'ai un eu petit problème au début; je n'avais pas exactement le même output et je ne comprenais pas vraiment pourquoi. C'était comme si `echo $infos_page` ne donnait pas exactement le même output que quand j'utilisais `cURL`directement dans la pipeline; j'avais des retours à la ligne en plus dans mon output. En bidouillant, j'ai compris qu'il fallait mettre la variable `$infos_page` entre guillemets si je voulais garder le formatage exact. Je ne sais pas trop pourquoi ça marche comme ça, mais au moins maintenant je le sais.

Dernière chose bis : à la slide "structure attendue pour le mini-projet", on attend un fichier tableau.html, mais je crois qu'on n'a pas encore vu comment convertir notre output en fichier html. Lorsque je redirige mon output comme ceci `> tableau.html`, le fichier n'est franchement pas très lisible, alors je pense qu'il y a des étapes supplémentaires pour convertir un txt en html; d'ailleurs c'est écrit à la slide 7 "on transformera le tout plus tard en page web"

Update 06/11

En discutant avec des camarades aujourd'hui, je me suis souvenu qu'il y avait un fichier "05-miniprojet-exercices-supplémentaires.pdf". On ne savait pas trop s'il fallait vraiment les faire pour le 8 Novembre, mais dans le doute j'ai décidé de les faire quand même, et puis ça m'a amusé en plus. Je n'ai pas eu beaucoup de mal. Pour l'exercice 3 sur les bigrammes, j'ai décidé d'utiliser deux fichiers avec un mot par ligne, sauf qu'un des deux fichiers commence par une ligne vide, ce qui fait qu'à partir de la deuxième ligne, en utilisant "paste", on a une structure :
mot 1 - mot 2
mot 2 - mot 3 
mot 3 - mot 4
etc.

et il suffit ensuite de trier les occurences de ces bigrammes. J'ai juste eu un petit soucis : la commande que je tapais dans le terminal pour insérer une ligne vide au début du fichier, soit `echo "\r" > fichier_bigramme_2.txt` fonctionnait dans le CLI, mais pas quand j'éxecutais mon script. J'ai mis un peu de temps à me rendre compte que c'était parce que mon interpréteur CLI est zsh, mais j'utilise bash pour lancer mes scripts, et bash et zsh n'ont visiblement pas la même syntaxe pour interpréter les caractères de contrôle. Avec bash, j'ai réussi à obtenir le même output en tapant plutôt `$'\r'`, et les guillemets simples sont obligatoires... Ça m'a l'air un peu trop compliqué; si on y réfléchit bien, bash a besoin de trois indices pour comprendre qu'on lui donne un caractère de contrôle : le $ + le backslash + les single quotes... Zsh a l'air d'utiliser un peu plus son cerveau.
 
# séance 7

Hier, j'étais à deux doigts de traiter bash de gros bébé, mais en fait j'avais juste oublié l'option -e à echo, pour que les caractères de contrôles soient interprétés correctement. Visiblement, pas besoin de cette option avec zsh.

Cette semaine, on a dû reprendre l'output du mini-projet qu'on avait enregistré en tsv, et le transformer en tableau http. Comme on avait déjà tout formaté en tsv, la modification du script a été assez simple : il suffisait de remplacer les `\t` par la syntaxe HTML qui ajoute des lignes au tableau. On rajoute le reste des informations html avant et après la boucle, et le tour est joué. 
Dans firefox, tout s'affichait correctement, mais dans safari, il y avait des problèmes d'encodage des caractères diacrités. J'ai donc rajouté la métadonnée `<meta charset='UTF-8'>` au début du fichier, et ça a résolu le problème. Apparement, Safari utilise ISO LATIN 1 par défaut quand l'encodage n'est pas spécifié dans les métadonnées. Ensuite, j'ai recherché comment faire en sorte que le lien soit cliquable; il suffisait de rajouter une balise `<a>`. 
Enfin, j'ai rajouté des commentaires pour expliquer un peu le script, qui devient de plus en plus cryptique : le moi du futur me remerciera.

Pour ce qui est de l'exercice sur Candide, je l'ai déjà fait.

# séance 8

Cette semaine, on a découvert Bulma et on a dû apprendre à s'en servir pour créer un petit site avec un page d'accueil et une page de tableaux. J'ai bien aimé fouiller dans la docu pour essayer d'embellir un peu mon site. J'ai passé un temps fou à rajouter des logos dans ma barre de navigation. Bulma utilise une base de données de logo appellée fontawesome, mais j'ai eu beaucoup de mal à trouver comment l'utiliser. Il a fallu me créer un compte fontawesome pour obtenir un code et appeler ce code dans le code html avec une balise `<script>`. 

Après avoir écrit le code http avec le design de mon choix, il suffisait de modifier le script du mini-projet pour qu'il génère automatiquement le nouveau code http/bulma. 

# séance 9

Cette semaine on commence pour de vrai les projets de groupe. Donc j'imagine qu'il va plus se passer grand chose sur ce dépôt. Tout se passe là-bas (https://github.com/Maouee/PPE_arbre) maintenant. On a retravaillé le script pour le faire fonctionner avec nos données. Tout fonctionne, mais on n'arrive pas à générer une bonne structure html; c'est impossible d'`echo` tout le html avec la bonne indentation. On verra ça plus tard, le plus important c'est que ça fonctionne. L'autre problème, c'est que notre script marche moins bien sur mac. Je crois que le problème vient de la version mac de lynx, qui rencontre des problèmes avec les caractères diacrités. Dès qu'on veut faire un changement sur le script, il faut donc attendre que Lucile (la seule sous linux) le lance pour voir si ça fonctionne vraiment...

# Séance 10

On a adapté le script pour gérer les erreurs 404 et afficher "NA" et forcer le compteur à 0. On a toujours l'air d'avoir un lien cliquable avec le "NA", il faudrait faire une condition où on ne met pas un lien cliquable si le code réponse est autre chose que 200.

Pour remplacer les caractères "<", ">" et "&", j'ai utlisé sed, mais il y a un problème vu qu'on essaie de remplacer "&" par "&amp"; alors j'ai remplacé le "&" par un "@" dans la substitution. 

Exercices itrameur : tout roule ! On a retravaillé les chemins pour correspondre davantage aux exemples donnés. 
Pour régler le problème avec Lynx, on a trouvé un autre éditeur qui fonctionne mieux sur Mac : Links. La syntaxe est très similaire à celle de Lynk : on a l'option -dump pour récupérer le contenu textuel de la page, et l'option -codepage pour convertir la page dans l'encodage de notre choix (UTF-8 en l'occurence)