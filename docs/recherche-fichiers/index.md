---
layout: default
title: Recherches de fichiers
nav_order: 3
---

## La recherche de fichiers

### find

{: .note }

> `find` - permet de rechercher des fichiers et des répertoires en fonction de divers critères.

```bash
# Syntaxe
find chemin [ OPTIONS ] [ ACTIONS ]

# Options
#    -iname     :  nom insensible à la casse
#    -name      :  reconnaît les métacaractères du bash, -o -a
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
#    -print (action par défaut)
#    -delete
#    -exec ex : -exec commande {} \\;
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

#### Exemples - Recherche de fichiers par type

```bash
#  Trouve tous les fichiers ayant un poid supérieurs à 100 MB
find . -size +100M
#  Trouve tous les fichiers ayant un poid inférieur à 1 KB
find . -size -1k
```

#### Exemples - Recherche de fichiers par type

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

#### Exemples - Autres

```bash
#
find . -type f -size +1M -exec mv -t chemin/ {} +
#
find /etc -type f -name "*.conf" ! -name "etc/s*" -user "root" -size +2k 2>/dev/null
#
find /etc -type f -name "fic*" ! -name "*.old" -size +1M -exec mv {} {}.old \;
```

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

> Les fichiers qui ont été récemment créer ne serait pas encore enregistrer dans la base de données de Locate. La base de données de locate est mise à jour au moin une fois par jour. Il est possible de mettre à jour cette base de données en utilisant la commade : `updatedb`

### grep

{: .note }

> `grep` - permet de rechercher un / des patterne(s) dans un fichier

```bash
# Syntaxe
grep [OPTIONS] MOTIF [FICHIER...]
grep [OPTIONS] [-e MOTIF | -f FICHIER] [FICHIER...]

# Options
#    -i : Recherche un terme en ignorant la casse
#    -r : Recherche récursive
#    -v : Inverse la recherche
#    -o : Affiche seulement les parties (non vide) correspondantes d'une ligne
#    -n : Affiche les lignes sélectionnées et leur n° de ligne
```

#### Exemples

```bash
#  Recherche un motif dans un fichier
grep pattern fic
#  Recherche un motif dans plusieurs fichiers
grep pattern fic1.txt fic2.txt fic3.txt
#  Recherche un motif dans tous les fichiers d'un répertoire
grep pattern *

#  Recherche un motif dans tous les fichiers d'un répertoire et de ses sous-répertoires
grep -r pattern .
#  Recherche un motif et affiche les numéros de ligne des lignes correspondantes
grep -n pattern fic.txt
#  Recherche un motif et affiche le contexte des lignes correspondantes
grep -C 3 pattern fic.txt
#  Recherche un modèle et affiche uniquement les noms des fichiers qui contiennent une correspondance
grep -l pattern fic1.txt fic2.txt fic3.txt
#  Recherche un modèle et affiche uniquement les lignes qui ne contiennent PAS de correspondance :
grep -v pattern fic.txt
#  Sélectionner les lignes du flux contenant un « motif » donné
grep "root" /etc/passwd
```

### whereis

{: .note }

> **`whereis`** - utilisée pour localiser les fichiers binaires, source et de page de manuel pour une commande donnée.

```bash
# Syntaxe
whereis [options] commande

# Options
#    -l : Recherche les répertoires dans lesquels la commande whereis recherche.
#    -p : Recherche uniquement les binaires de commande
#    -s : Recherche uniquement les fichiers source
#    -m : Recherche uniquement les fichiers man
```

#### Exemples

```bash
#  Localise les fichiers binaires, source et de page de manuel pour la commande "ls"
whereis ls
#  Recherche uniquement le fichier binaire pour la commande "ls"
whereis -b ls
#  Recherche uniquement le fichier de la page de manuel de la commande "ls"
whereis -m ls
#  Recherche toutes les fichiers binaires, sources et manuels de tous les commandes présent sur l'os
whereis -b -s -m *
```
