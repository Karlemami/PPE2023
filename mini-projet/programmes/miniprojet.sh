file=$1

if [ $# -ne 1 ]
then
	echo "Ce script demande en argument un fichier d'URLS."
	exit
fi

counter=1
while read -r line
do
    infos_page=$(curl -L -I $line )
    code_reponse=$(echo "$infos_page" | egrep "HTTP" | tail -1 |tr -d "\r\d")
    encodage=$(echo "$infos_page" | egrep -o "charset.+\b")
    echo -e "${counter}\t${line}\t${code_reponse}\t${encodage}"
    ((counter++))

done < $file