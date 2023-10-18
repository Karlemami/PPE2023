if [ $# -ne 1 ]
then
    echo "Ce script demande un argument : le type d'annotation à rechercher"
    exit
fi

TYPE=$1

bash ScriptVariables.sh 2016 $TYPE
bash ScriptVariables.sh 2017 $TYPE
bash ScriptVariables.sh 2018 $TYPE