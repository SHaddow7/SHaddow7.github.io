---
layout: default
title: Les conditions
parent: Bash
grand_parent: Linux
nav_order: 2
---

## Les structures conditionnels

#### Opérateurs avancées :

{: .note}

> Vous pouvez vous rendre sur ce lien pour voir les autres opérateurs :
>
> [ Liens - Les opérateurs avancées ](bash-avancee.html#opérateurs-acceptés-ordre-croissant-de-priorité-)

## Syntaxes - if, if … else, etc

#### Syntaxes

```bash
# if then ... fi
if [ condition ]; then
    commande
fi
```

```bash
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

#### Exemples

```bash
#!/bin/bash
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

#### Syntaxes

```bash
#!/bin/bash
case $variable in
    motif1) commande(s) ;;
    motif2) commande(s) ;;
    motif3) commande(s) ;;
    *) commande(s) ;;
esac
```

```bash
# Mettre plusieurs motifs dans un même cas
case $variable in
    motif1|motif2|motif3) commande(s) ;;
esac
```

#### Exemples

```bash
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

#### Les opérateurs

| Opérateurs |                        Exemples                        | Descriptions                                |
| :--------: | :----------------------------------------------------: | :------------------------------------------ |
|     -e     | <span style='font-size:18px'>`[[ -e Fichier ]]`</span> | Vrai, si fichier **existe**                 |
|     -f     | <span style='font-size:18px'>`[[ -f Fichier ]]`</span> | Vrai, si fichier **ordinaire** et **existe**|
|     -d     | <span style='font-size:18px'>`[[ -d Fichier ]]`</span> | Vrai, si fichier est **répertoire**         |
|     -h     | <span style='font-size:18px'>`[[ -h Fichier ]]`</span> | Vrai, si fichier est un **lien symbolique** |
|     -r     | <span style='font-size:18px'>`[[ -r Fichier ]]`</span> | Vrai, si fichier est **lue**                |
|     -w     | <span style='font-size:18px'>`[[ -w Fichier ]]`</span> | Vrai, si fichier peut être **écrite**       |
|     -x     | <span style='font-size:18px'>`[[ -x Fichier ]]`</span> | Vrai, si fichier est **exécuter**           |
|     -s     | <span style='font-size:18px'>`[[ -s Fichier ]]`</span> | Vrai, si fichier n'est pas vide             |

#### Exemples - Tests sur des fichiers

```bash
[ -f "fichier1" ]               #  Vrai, s'il s'agit d'un fichier ordinaire
[[ fichier1 -nt fichier2 ]]     #  Vrai, si fichier 1 est plus récent que fichier 2
[[ fichier1 -ot fichier2 ]]     #  Vrai, si fichier 2 est plus récent que fichier 1
[[ fichier1 -ef fichier2 ]]     #  Vrai, si les deux fichiers sont les mêmes
[[ ! -w fichier ]]              #  Vrai, si le fichier ne peut être écrite
[[ -r fichier -a -x fichier ]]  #  Vrai, si le fichier peut être lue ET être exécuter
[[ -r fichier -o -w fichier ]]  #  Vrai, si le fichier peut être lue ET être écrite
```

### Test sur les chaînes de caractères

#### Les opérateurs

| Opérateurs |                         Exemples                         | Descriptions                              |
| :--------: | :------------------------------------------------------: | :---------------------------------------- |
|     ==     | <span style='font-size:18px'>`[[ "$a" == "$b" ]]`</span> | Vrai, si les deux valeurs **sont égales** |
|     !=     | <span style='font-size:18px'>`[[ "$a" != "$b" ]]`</span> | Vrai, si les deux valeurs **différents**  |
|     -n     |  <span style='font-size:18px'>`[[ -n chaine1 ]]`</span>  | Vrai, si la chaine **n'est pas vide**     |
|     -z     |  <span style='font-size:18px'>`[[ -z chaine2 ]]`</span>  | Vrai, si la chaîne est **vide**           |

### Tests sur les entiers

{: .note }

> Ces opérateurs sont uniquement pour les entiers.

#### Les opérateurs

| Opérateurs |                        Exemples                        | Equiv. | Descriptions                             |
| :--------: | :----------------------------------------------------: | :----: | ---------------------------------------- |
|    -eq     | <span style='font-size:18px'>`[[  $a -eq $b ]]`</span> |   ==   | Vrai, si a **égale à** b                 |
|    -ne     | <span style='font-size:18px'>`[[ $a -ne $b ]]`</span>  |   !=   | Vrai, si a **différent de** b            |
|    -lt     | <span style='font-size:18px'>`[[ $a -lt $b ]]`</span>  |   <    | Vrai, si a **strictement inférieur à** b |
|    -le     | <span style='font-size:18px'>`[[ $a -gt $b ]]`</span>  |   >    | Vrai, si a **strictement supérieur à** b |
|    -gt     | <span style='font-size:18px'>`[[ $a -le $b ]]`</span>  |   <=   | Vrai, si a **inférieur ou égale à** b    |
|    -ge     | <span style='font-size:18px'>`[[ $a -ge $b ]]`</span>  |   >=   | Vrai, si a **supérieur ou égale à** b    |
