---
layout: default
title: Les fonctions
parent: Bash
grand_parent: Linux
nav_order: 4
---

## Les fonctions

### A savoir

| Opérateurs | Equivalents                                                            |
| :--------: | ---------------------------------------------------------------------- |
|     $?     | Variable contenant le code retour de la fonction                       |
|     $0     | Conserve le nom du script                                              |
|  $1 - $n   | Il est possible d'intégrer des paramètres à l'appel de la fonction     |
|  return n  | Permet de définir manuellement le code retour de la fonction [0 - 255] |

### Définition des fonctions

```bash
# Forme 1 : cette version est un bug pour les autres shell
maFontion() {
    echo "hello $1"
}
```

```bash
# Forme 2 :
function maFontion {
    echo "hello $1"
}
```

### Appel de la fonction

```bash
#!/bin/bash
function maFontion {
    #  Définit une variable LOCALE à la fonction
    #  son utilisation se fera uniquement à l'intérieur de la fonction
    local mon_argument=$1
    echo "$mon_argument"
}
maFontion "Hello world!" #  Appel de la fonction + utilisation d'un argument
```

### Retourner des valeurs

```bash
#!/bin/bash
# 1 - Retourner des valeurs
function maFontion {
    local code_retour=80
    exit $code_retour
}
maFontion
```

```bash
#!/bin/bash
# 2 - Retourner des valeurs
function maFontion {
    local mon_resultat='Une valeur'
    echo "$mon_resultat"
}
result=$(maFontion)
```

```bash
#!/bin/bash
# 3 - Retourner des valeurs
function maFontion {
    local code_retour=80
    return $code_retour  #  Retourne uniquement des valeurs comprise entre [0-255]
}
maFontion
```

### La fonction d'usage - Trés utile ;)

```bash
#!/bin/bash

# Fonctions : Usage
#   s1 : code retour
#   s2 : argument attendu
#   s3 : message d'erreur
#   s4 : message complémentaire
function usage {
    local code_retour=$1
    local arg_attendu=$2
    local msg_err=$3
    local msg_cmp=$4
    local nom_programme=$(basename "$0")

    echo -e "${msg_err}"
    echo -e "USAGE : ${nom_programme} ${arg_attendu}\n" >&2

    [ -n "$msg_cmp" ] && echo -e "${msg_cmp}"

    # code retour
    exit "$code_retour"
}
```

#### Exemples - Quelques fonctions utiles

```bash
#!/bin/bash
# Fonction qui décompresse un archive en fonction de son extension
function decompresser_fichier {
    local fichier=$1
    local code_erreur=81
    local code_retour=80

    if [[ -f "$fichier" ]]; then
        case $fichier in
          *.tar.bz2) tar xvjf "$fichier" ;;
          *.tar.gz) tar xvzf "$fichier" ;;
          *.bz2) bunzip2 "$fichier" ;;
          *.gz) gunzip "$fichier" ;;
          *.tar) tar xvf "$fichier" ;;
          *.tbz2) tar xvjf "$fichier" ;;
          *.tgz) tar xvzf "$fichier" ;;
          *.zip) unzip "$fichier" ;;
          *) echo "Le fichier '$fichier' ne peut pas être extraite" ;;
        esac
    else
        echo "Le fichier '$fichier' n'est pas valide"
        exit $code_erreur
    fi

    return $code_retour
}
```



