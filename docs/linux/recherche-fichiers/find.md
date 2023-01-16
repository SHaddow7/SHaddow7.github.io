---
layout: default
title: Find
parent: Recherches de fichiers
grand_parent: Linux
---

### find

{: .note }

> `find` - permet de rechercher des fichiers et des répertoires en fonction de divers critères.

```bash
# Syntaxe
find chemin [ OPTIONS ] [ ACTIONS ]

# Options
#    -name      :
#    -iname     :  nom insensible à la casse
#    -type      :  le type de fichier : f (fichier), d (repertoire) ou l (lien)
#    -user      :  rechercher tous les fichiers et répertoires appartenant à un utilisateur
#    -group     :  rechercher tous les fichiers et répertoires appartenant à un groupe
#    -mtime +15 :  modifier il y a plus de 15 jours
#    -atime     :  recherche les fichiers non consultés au cours des n derniers jours (-n ou +n)
#    -ctime     :  date de la derniere modification du fichier, il y a - de, + de ou exactement n*24 h
#    -cmin      :  rechercher tous les fichiers modifiés au cours des n minutes (-n ou +n)
#    -size 30k  :  la taille du fichier est de 30 ko
#    -size +5M  :  la taille du fichier est + de 5 Mo
#    -maxdepth  :  la profondeur maximale de la recherche dans les répertoires
#    -mindepth  :  la profondeur minimale de la recherche dans les répertoires

# Actions
#    -print   :  Afficher le nom complet du fichier sur la sortie standard - (action par défaut)
#    -exec    :  Exécuter la commande
#    -delete  :  Effacer les fichiers ou les repertoires - (ATTENTION AVEC CETTE COMMANDE)
```

#### Exemples

```bash
#  Effectue une exécution pour chaque argument trouvé
find ... -exec {} \;
#  Effectue une seule exécution pour les arguments trouvés
find ... -exec {} \+
```

#### Exemples - Recherche de fichier par nom

```bash
#  Trouve tous les fichiers qui ont pour nom 'file.txt'
find . -name 'file.txt'
#  Trouve tous les fichiers en .txt dans le répertoire
find . -name '*.txt'
```

#### Exemples - Recherche de fichiers par type

```bash
#  Trouve tous les répertoires
find . -type d
#  Trouve tous les liens symboliques
find . -type l
```

#### Exemples - Recherche de fichiers par taille

```bash
#  Trouve tous les fichiers ayant un poid supérieurs à 100 MB
find . -size +100M
#  Trouve tous les fichiers ayant un poid inférieur à 1 KB
find . -size -1k
```

#### Exemples - Recherche de fichiers par date de modification

```bash
#  Trouver tous les fichiers modifiés au cours de la dernière journée
find . -mtime -1
#  Trouver tous les fichiers modifiés il y a plus de 30 jours
find . -mtime +30
```

#### Exemples - Recherches en fixant une profondeur

```bash
# Recherhcer les fichiers ordinaires qui ont une extension ".txt"
# qui ont une profondeur d'au moins 3 répertoires.
find . -type f -name "*.txt" -maxdepth 3 2>/dev/null
```

#### Exemples - Combinaison de plusieurs critères

```bash
#  Trouve tous les fichiers '.txt' modifiés au cours de la semaine dernière
#  et dont la taille est supérieure à 50 Ko
find . -name '*.txt' -mtime -7 -size +50k
#  Trouve tous les fichiers en .sh dans rép et exécute une commande sur chacun
find . -name "*.sh" -exec cat {} \\;
#  Recherche tous les fichiers dans le répertoire courant (.) avec log dans leur nom
find . -­name "*log*"
#  Trouve tous les fichiers en .pdf dans rép et exécute une commande sur chacun
find . ­-name "*.pdf" ­-exec xpdf {} ';'
```
