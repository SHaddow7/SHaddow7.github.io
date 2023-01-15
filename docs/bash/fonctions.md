---
layout: default
title: Les fonctions
parent: Bash
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
    echo -e "USAGE : ${nom_programme} ${arg_attendu}\n" >$2

    [ -n "$msg_cmp" ] && echo -e "${msg_cmp}"

    # code retour
    exit "$code_retour"
}
```
