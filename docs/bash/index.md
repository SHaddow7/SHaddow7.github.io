---
layout: default
title: Bash
#nav_order: 1
has_toc: false
---

## Introduction sur le BASH

Le Bash (Bourne-Again SHell) est un interpréteur de commandes utilisé sur de nombreux systèmes d'exploitation, notamment Linux et macOS. Il permet d'exécuter des commandes, de créer des scripts et de automatiser certaines tâches.

```bash
#!/bin/bash
# Le shibang indique à l'OS quel interpréteur utiliser pour exécuter le script.
# Il est recommandé de commencer chaque script Bash par la ligne "#!/bin/bash".
```

## Squelette bash

```bash
#!/bin/bash
# Programme qui ...
# Auteur :

# Les variables

# Les fonctions

# Le programme principal

# Sortie du programme
exit 0
```

## Méthodologie

Pour ouvrir un terminal Bash, il suffit de rechercher "terminal" dans le menu de votre système d'exploitation et de lancer l'application. Vous pouvez également utiliser un raccourci clavier, comme Ctrl + Alt + T sous Linux.

```bash
# Etapes de création d'un script bash :

#  1. Creer un fichier du nom fic.sh avec touch, nano, vi, etc ...
#  2. Changer les permissions du scripts afin qu'il soit exécutable et pouvant être lu
chmod u=rwx,g=rwx,o=rwx /home/user/script.sh
#  3. Lancer le script une fois que les instructions ont été écrites
/home/stag/fic.sh ou ./fic.sh
```

## Les variables

### Déclaration des variables

```bash
#!/bin/bash

# > Affectation par la commande
# > Pas de déclaration de typage
# > "$" devant la variable pour appeler le contenu

# Synopsis
nomVariable=valeur

# Exemple(s)
var1="tutu"
toto=2
maVariable="alice"
var="toto"
echo "bonjour $var, il y a $(who | wc -l) utilisateurs connectés"
```

### Substitution des variables

```bash
#!/bin/bash

#  Si le paramètre n'est pas défini, on utilise la valeur par défaut (à droite)
${maVariable-uneAutreVariable}
${maVariable%suffix}	   # Supprime le suffixe
${maVariable#prefix}	   # Supprime le prefix
${maVariable%%suffix}	   # Supprime le suffix long
${maVariable##prefix}	   # Supprime le prefix long
${maVariable/from/to}	   # Remplace la 1ere occurence
${maVariable//from/to}	   # Remplace tous les occurence
${maVariable/%from/to}	   # Remplace le suffix
${maVariable/#from/to}	   # Remplace le prefix
```

### Manipulation de chaîne de caractères

```bash
# *Longueur paramètre*
${#var} # affiche la longueur du contenu de la variable var
```

```bash
# Affichage par défaut
${var}
${var:-"valdefaut"} # si var est vide, utilise valdefaut
${var:="valdefaut"} # si var est vide, affecte valdefaut à la variable variable
${var:?"valdefaut"} # si var est vide, sortie en erreur avec message valdefaut
${var:+"valdefaut"} # si var est non vide, utilise valdefaut
```

```bash
# Couper une variable • en fonction de la position
${var:position:longueur}
${var:5}     # variable var à partir du 6ème caractère
${var:2:1}   # 3ème caractère de var
${var:4:-1}  # du 5ème caractère jusqu'à l'avant dernier caractère
${var: -2:1} # avant dernier caractère
${@:2:4}     # affiche les paramètres positionnels 2 à 4
```

```bash
# En fonction d'un motif
${var#pre}  # variable var sans le préfixe
${var##pre} # variable var sans le préfixe
${var%suf}  # variable var sans le suffixe
${var%%suf} # variable var sans le suffixe
```

```bash
# le !
${!va*} # toutes les var. commençant par va en une seule chaîne de caractères
${!va@} # toutes les var. commençant par va en une multitudes de chaînes
${!var} # remplace var par sa valeur puis évalue la variable obtenue
```

```bash
# Substitution
${var/motif/chaîne}  # 1er motif remplacé par chaîne
${var//motif/chaîne} # tous les motifs remplacés par chaîne
${var/#motif/chaîne} # si commence par motif, ce dernier est remplacé par chaîne
${var/%motif/chaîne} # si termine par motif, ce dernier est remplacé par chaîne Modification de la casse
${var^motif}  # le motif est basculé en majuscule
${var^^motif} # modifie la chaîne tous les motifs sont basculés en majuscule
${var^^}      # toute la chaîne en majuscule
${var,motif}  # modifie la chaîne, le motif en minuscule
${var,,motif} # modifie la chaîne, tous les motifs en minuscule
${var,,}      # toute la chaîne en minuscule
```

**Plus de détail sur la substitution des variables :**

[Parameter Substitution](https://tldp.org/LDP/abs/html/parameter-substitution.html)

## Intéraction avec l’utilisateur

```bash
#!/bin/bash
# Description
#   La commande **read**
#   Stoppe l'exécution du programme
#   Attend une valeur
#   Enregistre le contenu dans une ou plusieurs variables

# Exemple
echo "Donnez une note entre 0 et 20 :"
read note
echo "Votre note est ${note}"
# > [SORTIE]
Résultat du programme
_Donnez une note entre 0 et 20 : 4 Votre note est 4_
```

## Les variables positionnelles

```bash
$0                      # contient le nom du script
$1, $2 … $9, ${10}...   # contiennent les arguments d'appel du script
$#                      # le nombre d'arguments
$*                      # la liste de tous les arguments du script
$@                      # la liste de tous les arguments du script
shift                   # décale l'affectation des numéros de variables positionnelles sur la droite

# exemple 1
# $0  : monscript.sh
# $1  : arg1
# $2  : arg2
# $3  : arg3
# $#  : dans ce cas ci, il s'agit du 3
# $@  : arg1 arg2 arg3
./monscript.sh arg1 arg2 arg3
# exemple 2
./script.sh arg1 arg2 arg3
#  Aprés un shift
./script.sh ~~arg1~~ arg2 arg3
```

## La commande test - Fichiers, variables, chaînes

### Test sur un fichier

```bash
#!/bin/bash
# Test sur un fichier :
#-e nom_fic : vrai si fichier existe
#			-f nom_fic : vrai si fichier ordinaire
#			-d nom_fic : vrai si fichier est répertoire
#			-r nom_fic : vrai si fichier est lisible
#			-h nom_fic : vrai si fichier est un lien symbolique
#			-w nom_fic : vrai si fichier peut être écrite
#			-s nom_fic : vrai si fichier a une taille > 0
#			-x nom_fic : vrai si fichier est exécutable

# Exemples
[ -f "fic1" ]         # vrai s'il s'agit d'un fichier ordinaire
[[ FILE1 -nt FILE2 ]]	# vrai si fichier 1 est plus récent que fichier 2
[[ FILE1 -ot FILE2 ]]	# vrai si fichier 2 est plus récent que fichier 1
[[ FILE1 -ef FILE2 ]]	# si les deux fichiers sont les mêmes
```

### Test sur les variables

```bash
#!/bin/bash

# Test sur une variable / Chaine :
#    -n $var : vrai si variable non vide
#    -z $var : vrai si variable vide

# Exemples
var1="hello"; var2=""

[ -n var1 ]
[ -z var2 ]
```

### Test sur les chaînes de caractères

| Opérateurs de comparaison | Descriptions                                                                                  |
| :-----------------------: | --------------------------------------------------------------------------------------------- |
|             =             | vrai si les deux valeurs sont égales                                                          |
|            !=             | vrai si les deux valeurs sont égales                                                          |
|            -eq            | vrai si les deux valeurs sont égales (pour les entiers uniquement)                            |
|            -ne            | vrai si les deux valeurs sont différentes (pour les entiers uniquement)                       |
|            -lt            | vrai si la première valeur est inférieure à la seconde (pour les entiers uniquement)          |
|            -le            | vrai si la première valeur est inférieure ou égale à la seconde (pour les entiers uniquement) |
|            -gt            | vrai si la première valeur est supérieure à la seconde (pour les entiers uniquement)          |
|            -ge            | vrai si la première valeur est supérieure ou égale à la seconde (pour les entiers uniquement) |

```bash
#!/bin/bash

# Test sur les chaînes de caractère
var1="velo" ; var2="voiture"

[ "$var1" == "$var2" ] # le test retourne faux
[ "$var1" != "$var2" ] # le test retourne vrai

# Test sur les nombres
var1=5 ; var2=7

[ $var1 -eq $var2 ] # "==" le test retourne faux
[ $var1 -ne $var2 ] # "!=" le test retourne vrai
[ $var1 -lt $var2 ] # "<"  le test retourne vrai
[ $var1 -gt $var2 ] # ">"  le test retourne faux
[ $var1 -le $var2 ] # "<=" le test retourne vrai
[ $var1 -ge $var2 ] # ">=" le test retourne faux
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
echo "Quel est votre moyenne ?"
read moy
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
	motif1)
		commande(s)
		;;
	motif2)
		commande(s)
		;;
	motif3)
		commande(s)
		commande(s)
		;;
	*) # cas par défaut
		commande(s)
		;;
esac
```

## Les structures itératives - while, until et for

### Les boucles While et until

```bash
#!/bin/bash

# La boucle while : faire tant que la condition est vraie
while condition
do
	commande(s)
done

# La boucle until : faire jusqu'à ce que la condition soit vraie
until condition
do
	commande(s)
done
```

```bash
#!/bin/bash
# Exemple
x=0
while [ $x -lt 10 ]
do
  echo "Hello"
  x=$((x+1))
done
```

### Les boucles for

```bash
#!/bin/bash

# Boucles for
# Forme 1 :
for variable in valeur1 valeur2 ... do
	commande(s)
done

# Forme 2 : args passés au script
for variable in $@ #
do
	commande(s)
done

```

```bash
# Forme 3 : les fichiers du répertoire
for variable in /etc/*
do
	commande(s)
done

# Forme 4 :
for ((i=0; i<9; i++)) do
	commande(s)
done
```

> **Opération sur les boucles :** continue : on passe à la prochaine itération de la boucle break : sortie de boucle exit : sortie du script !

## Les fonctions

### _Définition des fonctions_

```bash
#!/bin/bash
# Definitions des fonctions

# Forme 1 : cette version est un bug pour les autres shell
maFontion() {
    echo "hello $1"
}

# Forme 2
function maFontion {
    echo "hello $1"
}

# Forme 3
maFontion "John"
```

### _Retourner des valeurs_

```bash
#!/bin/bash
# Retourner des valeurs
function maFontion {
    local myresult='some value'
    echo "$myresult"
}
result=$(maFontion)
```

## Liens

[regex101: build, test, and debug regex](https://regex101.com/) <br/>
[Vim - Cheatsheet](https://devhints.io/vim) <br/>
