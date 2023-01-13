---
layout: default
title: Les conditions
parent: Bash
nav_order: 2
---

## Structure conditionnelle - if, if … else, etc

```bash
#!/bin/bash

# if then ... fi
if [ condition ]; then
    commande
fi

# if then... else… fi
if [ condition ]; then
    commande
else
    commande
fi
```

```bash
# if then… elif then… else... fi
if [ condition ]; then
    commande
elif [ condition ]; then
    commande
else
    commande
fi
```

```bash
#!/bin/bash
# Exemple
#  Demande à l'utilisateur de saisir sa moyenne
read -p "Quel est votre moyenne ?" moy
#  Vérifie que sa moyenne est plus grand que 15 et plus petit ou égale à 20
if [ $moy -gt 15 -a $moy -le 20 ]; then
    echo "Bravo! c'est excellent !"
else
    echo "Pas terrible tout cela !"
fi
```

## Alternative multiple - case

```bash

#!/bin/bash
case $variable in
    motif1) commande(s) ;;
    motif2) commande(s) ;;
    motif3) commande(s) ;;
    *) commande(s) ;;
esac

# Exemple
variable=$(cut -d":" -f1,1 /etc/passwd) # Recupere le nom de connexion de l'utilisateur
case $variable in
    "root") commande(s) ;;
    "alice") commande(s) ;;
    "arisu") commande(s) ;;
    "anakin") commande(s) ;;
    *) commande(s) ;;
esac

```

## La commande test - Fichiers, variables, chaînes

### Test sur un fichier

| Opérateurs de comparaison | Descriptions                           |
| :-----------------------: | -------------------------------------- |
|            -e             | vrai si fichier existe                 |
|            -f             | vrai si fichier ordinaire              |
|            -d             | vrai si fichier est répertoire         |
|            -h             | vrai si fichier est un lien symbolique |
|            -r             | vrai si fichier est lue                |
|            -w             | vrai si fichier peut être écrite       |
|            -x             | vrai si fichier est exécuter           |
|            -s             | vrai si fichier a une taille > 0       |

```bash
# Exemples
[ -f "fic1" ]           # vrai s'il s'agit d'un fichier ordinaire
[[ FILE1 -nt FILE2 ]]	# vrai si fichier 1 est plus récent que fichier 2
[[ FILE1 -ot FILE2 ]]	# vrai si fichier 2 est plus récent que fichier 1
[[ FILE1 -ef FILE2 ]]	# si les deux fichiers sont les mêmes
```

### Test sur les chaînes de caractères

| Opérateurs de comparaison | Descriptions                         |
| :-----------------------: | ------------------------------------ |
|             =             | vrai si les deux valeurs sont égales |
|            !=             | vrai si les deux valeurs différents  |
|            -n             | vrai si la chaine n'est pas vide     |
|            -z             | vrai si la chaîne est vide           |

```bash
# Exemple
var1="velo" ; var2="voiture"

[ "$var1" == "$var2" ]   # le test retourne faux
[ "$var1" != "$var2" ]   # le test retourne vrai

var1="hello"; var2=""

[ -n var1 ]   # vrai si variable n'est pas vide
[ -z var2 ]   # vrai si variable vide
```

### Tests sur les entiers

> A noter que ces opérateurs sont uniquement pour les entiers

| Opérateurs de comparaison | Descriptions                                                    |
| :-----------------------: | --------------------------------------------------------------- |
|            -eq            | vrai si les deux valeurs sont égales                            |
|            -ne            | vrai si les deux valeurs sont différentes                       |
|            -lt            | vrai si la première valeur est inférieure à la seconde          |
|            -le            | vrai si la première valeur est inférieure ou égale à la seconde |
|            -gt            | vrai si la première valeur est supérieure à la seconde          |
|            -ge            | vrai si la première valeur est supérieure ou égale à la seconde |

```bash
# Exemple
var1=13 ; var2=37

[ $var1 -eq $var2 ]   # "==" : "a égale à b"
[ $var1 -ne $var2 ]   # "!=" : "a différent de b"
[ $var1 -lt $var2 ]   # "<"  : "a strictement inférieur à b"
[ $var1 -gt $var2 ]   # ">"  : "a strictement supérieur à b"
[ $var1 -le $var2 ]   # "<=" : "a inférieur ou égale à b"
[ $var1 -ge $var2 ]   # ">=" : "a supérieur ou égale à b"
```

```bash
#!/bin/bash

# Combinaison de tests avec des opérateurs logiques
# !  : Négation
# -a : ET logique (and)
# -o : OU logique (or)

# Exemple
[ ! -w fichier ]
[ -r fichier -a -x fichier ]
[ -r fichier -o -w fichier ]
```
