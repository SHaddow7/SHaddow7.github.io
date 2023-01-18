---
layout: default
title: Locate
parent: Recherches de fichiers
grand_parent: Linux
---

### locate

{: .note }

> `locate` - permet de rechercher rapidement des fichiers et des répertoires sur votre système par leur nom.

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
locate "*bar*"   # Recherche rapide dans tout système
locate ".conf"   # Recherche tous les fichiers avec l’extension .conf
locate "*.extf"  # Recherche tous les fichiers avec une extension particulière
locate fichier*  # Trouve les fichiers qui commencent par le mot fichier

#  Trouve tous les répertoires qui portent le nom "documents"
locate -d documents
#  Trouve tous les répertoires et fichiers qui sont dans le répertoire "/home"
locate -b "/home"
#  Trouve tous les fichiers et répertoires qui comporte le mot "exemple" dans leur nom
locate -r "exemple"
```

{: .note}

> Les fichiers qui ont été récemment créer ne serait pas encore enregistrer dans la base de données de Locate.
>
> La base de données de locate est mise à jour au moins une fois par jour. Il est possible de mettre à jour cette base de données en utilisant la commande `updatedb`
