#!/bin/bash

# variables
repertoire=
script_path1=
script_path2=
question_path=
contenu="#!/bin/bash\n# Programme qui ...\n# Auteur :\n\n# Les variables\n\n# Les fonctions\n\n# Le programme principal\n\n# Sortie du programme\nexit 0"
debug=1

# preciser dans quel repertoire mettre les scripts
# verifier le nombre d'argument
if [ $# == 1 ]; then
    [ -n "$debug" ] || echo "Traitement du nom du répertoire"
    repertoire=$1
    if [ -d "${repertoire}" ] && [ -r "${repertoire}" ]; then
        [ -n "$debug" ] || echo "C'est un repertoire"
        script_path1="$(dirname "$repertoire")/script_bash1.sh"
        script_path2="$(dirname "$repertoire")/script_bash2.sh"
        question_path="$(dirname "$repertoire")/questions.txt"
    else
        echo "${repertoire} n'est pas un repertoire; les fichiers ne seront pas crées"
        exit 0
    fi
else
    mkdir "scripts_bash"
    script_path1="scripts_bash/script_bash1.sh"
    script_path2="scripts_bash/script_bash2.sh"
    question_path="scripts_bash/questions.txt"
fi

# Création des fichiers scripts, avec du contenu
echo "Création des scripts bash"
touch "${script_path1}" && echo -e "${contenu}" >"${script_path1}"
touch "${script_path2}" && echo -e "${contenu}" >"${script_path2}"
chmod +x "${script_path1}" "${script_path2}"

# creer le fichier question
echo "Création du fichier questions.txt"
touch "${question_path}"
