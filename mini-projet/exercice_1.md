1. Pourquoi ne pas utiliser cat ?

L'utilisation de read dans und boucle while permet de lire le fichier ligne par ligne, ce qui est utile quand on sait que chaque ligne 
contient une URL que l'on veut récupérer pour en faire quelque chose. "cat" afficherait l'ensemble du fichier, sans distinguer les 
lignes, et on ne pourrait pas récupérer les URL.



2. Comment transformer "urls/fr.txt" en paramètre du script ?

file=$1

if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier d'URLS."
	exit
fi

while read -r line;
do
	echo ${line};
done < $file




3. Comment afficher le numéro de ligne avant chaque URL ?

file=$1

if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier d'URLS."
	exit
fi

counter=1
while read -r line;
do
	echo -e "${counter}\t${line}"
	((counter++))
done < $file

