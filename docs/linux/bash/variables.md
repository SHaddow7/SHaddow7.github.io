---
layout: default
title: Les variables
parent: Bash
grand_parent: Linux
nav_order: 1
---

## Les variables

### Déclaration des variables

```bash
#!/bin/bash
# > Affectation par la commande
# > Pas de déclaration de typage
# > "$" devant la variable pour appeler le contenu

# Synopsis
nomVariable=valeur  #  Déclaration d'une variable
$nomVariable        #  Appel de la variable ou
${nomVariable}
```

#### Exemples

```bash
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
${maVariable-uneAutreVariable}  # Syntaxe
${maVariable%suffix}	        # Supprime le suffixe
${maVariable#prefix}	        # Supprime le prefix
${maVariable%%suffix}	        # Supprime le suffix long
${maVariable##prefix}	        # Supprime le prefix long
${maVariable/from/to}	        # Remplace la 1ere occurence
${maVariable//from/to}	        # Remplace tous les occurence
${maVariable/%from/to}	        # Remplace le suffix
${maVariable/#from/to}	        # Remplace le prefix
```

### Manipulation de chaîne de caractères

#### Longueur paramètre

```bash
${#var} # affiche la longueur du contenu de la variable var
```

#### Affichage par défaut

```bash
${var}
${var:-"valdefaut"}   # si var est vide, utilise valdefaut
${var:="valdefaut"}   # si var est vide, affecte valdefaut à la variable variable
${var:?"valdefaut"}   # si var est vide, sortie en erreur avec message valdefaut
${var:+"valdefaut"}   # si var est non vide, utilise valdefaut
```

#### Couper une variable en fonction de la position

```bash
${var:position:longueur}  # Syntaxe
${var:5}                  # Variable var à partir du 6ème caractère
${var:2:1}                # 3ème caractère de var
${var:4:-1}               # Du 5ème caractère jusqu'à l'avant dernier caractère
${var: -2:1}              # Avant dernier caractère
${@:2:4}                  # Affiche les paramètres positionnels 2 à 4
```

#### Couper une variable en fonction d'un motif

```bash
${var#pre}  # variable var sans le préfixe
${var##pre} # variable var sans le préfixe
${var%suf}  # variable var sans le suffixe
${var%%suf} # variable var sans le suffixe
```

#### Le caractère " ! "

```bash
${!va*} # toutes les var. commençant par va en une seule chaîne de caractères
${!va@} # toutes les var. commençant par va en une multitudes de chaînes
${!var} # remplace var par sa valeur puis évalue la variable obtenue
```

#### Substitution

```bash
${var/motif/chaîne}  # 1er motif remplacé par chaîne
${var//motif/chaîne} # tous les motifs remplacés par chaîne
${var/#motif/chaîne} # si commence par motif, ce dernier est remplacé par chaîne
${var/%motif/chaîne} # si termine par motif, ce dernier est remplacé par chaîne Modification de la casse
${var^motif}         # le motif est basculé en majuscule
${var^^motif}        # modifie la chaîne tous les motifs sont basculés en majuscule
${var^^}             # toute la chaîne en majuscule
${var,motif}         # modifie la chaîne, le motif en minuscule
${var,,motif}        # modifie la chaîne, tous les motifs en minuscule
${var,,}             # toute la chaîne en minuscule
```

## Intéraction avec l’utilisateur

#### Syntaxes

{: .note}

> La commande `read` permet de lire une ligne d'entrée à partir de l'entrée standard et de stocker les données lues dans une variable. Elle va arreter l'exécution du programme en attendant la valeur avant de poursuivre l'exécution de celle-ci.

```bash
# Syntaxe
read [OPTIONS] [ VARIABLE | TABLEAU ]

# Options
#    -p : Affiche un message à l'utilisateur avant de lire l'entrée
#    -a : Lit l'entrée dans un tableau de varaible plutôt qu'une variable unique
#    -r : Lit l'entrée brute, sans interpréter les caractères spéciaux (ex : les antislashs)
#    -n : Lit un certain nombre de caractères seulement
#    -s : Lit l'entrée (en mode silencieux) sans afficher les caractères entrés
#    -d : Spécifie un caaractère de fiin de ligne différent de celui par défaut ('\n')
```

#### Exemples

```bash
#!/bin/bash
echo "Donnez une note entre 0 et 20 :"
read note
echo "Votre note est ${note}"
# > [SORTIE] - Résultat du programme
_Donnez une note entre 0 et 20 : 4 Votre note est 4_
```

```bash
#!/bin/bash
read -p  "Quel est votre prénom ? " note
echo "Salut ${note} !"
# > [SORTIE] - Résultat du programme
Quel est votre prénom ? Marc
Salut Marc !
```

## Les variables positionnelles

```bash
$0                      # contient le nom du script
$1, $2 … $9, ${10}...   # contiennent les arguments d'appel du script
$#                      # le nombre d'arguments
$*                      # la liste de tous les arguments du script
$@                      # la liste de tous les arguments du script
shift                   # décale l'affectation des numéros de variables positionnelles sur la droite
```

#### Exemples

```bash
# Exemple 1
# $0  : monscript.sh
# $1  : arg1
# $2  : arg2
# $3  : arg3
# $#  : dans ce cas ci, il s'agit du 3
# $@  : arg1 arg2 arg3
./monscript.sh arg1 arg2 arg3

# Exemple 2
./script.sh arg1 arg2 arg3
#  Aprés un shift : on se déplace vers la droite, on change d'argument
./script.sh arg1 arg2 arg3
```

## Liens

[Parameter Substitution](https://tldp.org/LDP/abs/html/parameter-substitution.html)
