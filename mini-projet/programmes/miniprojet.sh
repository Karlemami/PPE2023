file=$1

#vérifie que l'utilisateur entre un argument
if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier d'URLS."
	exit
fi

#Informations contenues dans les headers de la page.
echo '<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
		<script src="https://kit.fontawesome.com/b0d5fca4a5.js" crossorigin="anonymous"></script>
	</head>' > ../tableaux/tableau_fr.html

#Style du site
echo '    <body>
		<div class="container is-max-desktop">
			<div class="block is-centered">
				<h1 class="title is-bordered has-text-centered has-background-success-light has-background-centered">
					Programmation et projet encadré
				</h1>
				<div class="tabs is-centered">
					<ul>
						<li>
							<a href="../../index.html">
								<span class="icon is-small"><i class="fa-solid fa-house" aria-hidden="true"></i></span>
								<span>Accueil</span>
							</a>
						</li>
						<li class="is-active">
							<a>
								<span class="icon is-small"><i class="fa-solid fa-table" aria-hidden="true"></i></span>
								<span>Tableaux</span>
							</a>
						</li>
					</ul>
				</div>
			</div>' >> ../tableaux/tableau_fr.html

#Créé le tableau et les header rows
echo '			<table class="table is-bordered is-fullwidth is-hoverable">
				<thead>
					<tr>
						<th>numéro</th>
						<th>URL</th>
						<th>code HTTP</th>
						<th>encodage</th>
					</tr>
				</thead>' >> ../tableaux/tableau_fr.html


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
    echo -e "
				<tr>
					<td>$numero_URL</td>
					<td><a href="$URL">$URL</a></td>
					<td>$code_reponse</td>
					<td>$encodage</td>
				</tr>" >> ../tableaux/tableau_fr.html
    #incrémente le compteur
    ((numero_URL++))

done < $file
#ferme la balise tableau, la balise container, la balise body et la balise html
echo "			</table>
		</div>
	</body>

</html>" >> ../tableaux/tableau_fr.html