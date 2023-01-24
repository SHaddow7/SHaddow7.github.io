---
layout: default
title: Locate
parent: Recherches de fichiers
grand_parent: Linux
---

### locate

{: .note }

> `locate` - permet de rechercher rapidement des fichiers et des répertoires sur votre système par leur nom.
>
> Les fichiers qui ont été récemment crée ne sont pas automatiquement enregistrés dans la base de données de Locate. Il est possible de mettre à jour cette base de données en utilisant la commande `updatedb`.

```bash
# Syntaxe
locate [ OPTIONS ] Fichier

# Options
#    -e : Afficher que les fichiers existants dans le système
#    -c	: Compte le nombre d’entrées
#    -r : Fait une recherche en utilisant les expréssion régulière
#    -i : Ignore la casse
#    -l <Num> : Réduit le nombre d’entrée du résultat à Num
```

#### Exemples

```bash
locate "*bar*"   #  Recherche les fichiers qui contiennent le terme "bar" dans leur nom de fichier
locate ".conf"   #  Recherche tous les fichiers avec l’extension ".conf" dans leur nom de fichier
locate "*.extf"  #  Recherche tous les fichiers avec l’extension ".extf" dans leur nom de fichier
locate fichier*  #  Recherche tous les fichiers qui commencent par le mot "fichier"

locate -d documents  #  Trouve tous les répertoires qui portent le nom "documents"
locate -b "/home"    #  Trouve tous les répertoires et fichiers qui sont dans le répertoire "/home"
locate -r "exemple"  #  Trouve tous les fichiers et répertoires qui comporte le mot "exemple" dans leur nom
```
