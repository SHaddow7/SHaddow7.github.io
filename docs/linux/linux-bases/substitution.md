---
layout: default
title: Substitution des commandes
parent: Les Bases
grand_parent: Linux
nav_order: 5
---

## La substitution des commandes

{: .note }

> Le Bash propose plusieurs mécanismes de substitution qui permettent de manipuler et de transformer des chaînes de caractères
>
> Voici quelques exemples de substitution couramment utilisés :

#### La substitution de commande

```bash
#  Permet d'exécuter une commande et de remplacer son résultat par sa sortie
echo "Il y a $(ls | wc -l) fichiers dans ce répertoire."
```

#### La substitution de variable

```bash
#  Permet de remplacer le nom d'une variable par sa valeur.
echo "Ma maison se trouve à ${MAISON}."
```

#### La substitution de commande avec l'opérateur ":-"

```bash
#  Permet de définir une valeur par défaut pour une variable si celle-ci n'est pas définie.
echo "Ma maison se trouve à ${MAISON:-inconnue}."
```

#### La substitution de sous-chaîne

```bash
#  Permet de remplacer une partie d'une chaîne de caractères par une autre chaîne.
echo "${Bonjour:0:1}onjour"
```
