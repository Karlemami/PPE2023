file=$1

#vérifie que l'utilisateur entre un argument
if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier d'URLS."
	exit
fi
#indique que le fichier est encodé en UTF-8; certains navigateurs (safari) n'utilisent pas UTF-8 par défaut
echo "<meta charset='UTF-8'>"
echo "<table>" 
#Créé et nomme les header rows
echo -e "\t<tr><th>numéro</th><th>URL</th><th>code HTTP</th><th>encodage</th></tr>" 
numero_URL=1
while read -r URL
do
    #récupère les informations contenues dans le(s) headers HTTP
    infos_page=$(curl -L -I -s $URL )
    #recherche la dernière occurence de "HTTP" et isole le code réponse à 3 chiffres. Supprime les carriage return
    code_reponse=$(echo "$infos_page" | egrep "HTTP" | tail -1 |tr -d "\r\d"|egrep -o "[0-9]{3}")
    #recherche la dernière occurence de "charset.+" et isole le nom de la table d'encodage. Supprime les carriage return
    encodage=$(echo "$infos_page" | egrep -o "charset.+\b" | tail -1 | tr -d "\r\d" | tr -d "charset=") 
    #echo le numéro, l'url (cliquable), le code réponse et le charset en format tableau http. 
    echo -e "\r\t<tr>\r\t\t<td>${numero_URL}</td><td><a href=\"${URL}\">${URL}</a></td><td>${code_reponse}</td><td>${encodage}</td>\r\t</tr>" 
    #incrémente le compteur
    ((numero_URL++))

done < $file
#ferme la balise tableau 
echo "</table>"