---
title: Home
layout: home
nav_order: 0
---

{: .warning }
Attention ce site web est toujours en cours de construction

## Aides

```bash
# Syntaxe
man [ -s X ] nom-de-commande

# Exemple (s)
man man # Obtient le manuel de man
man 5 passwd <=> man passwd.5
man 1 bash

# Lire la documentation de "info" avec `info`
apropos info | grep '^info.*('
man info
info info
info 5 info

# Lire la documentation d'informations bash
info bash
info bash 'Bash Features'
info bash 6
info --apropos bash

# Autres commandes
whatis nom-de-commande # Obtenir des informations sur des commandes
apropos "chaîne de recherche"
which commande # quelle commande sera lancer
```

## Quelques commandes Unix

```bash
apropos # Liste les pages du manuel concernant un sujet
whoami  # Affiche le nom de l'utilisateur
passwd  # Changer son propre mot de passe
exit    # Quitte l'interface du terminal
man     # Affiche le manuel pour des commandes
who     # Affiche qui est connecté
mount   # Affiche les systèmes de fichiers qui sont montés
echo    # Affiche le texte « texte » passé en argument
cat     # Affiche le contenu du fichier «fichier» passé en argument
type    # Obtenir les informations d'une commande
```

| Catégorie de commande | Descriptions                                                                       |
| --------------------- | ---------------------------------------------------------------------------------- |
| Internes              | pas d'exécution d'un fichier tiers, pas de création de sous-processus associé      |
| Externes              | exécution d'un fichier portant le nom de la commande, création d'un sous-processus |

## Commande sur les informations systèmes

```bash
date    # Affiche la date du jour
cal     # Affiche le calendrier
uptime  # Affiche la disponibilité
whoami  # Affiche le nom de l'utilisateur
w       # Affiche les sessions en cours
passwd  # Changer son propre mot de passe
uname -a # informations du noyau
cat /proc/cpuinfo # Informations sur le cpu
df -h # Espace disque libre
du -h # Espace disque occupé par un fichier
free  # Etat de la mémoire et de la swap
wget  # Utiliser pour télécharger des fichier depuis un serveur
```

```bash
# Exemple (s) pour la commande "Date"

#  Res. : Lundi 09 janvier 2023 20:52 ...
date
#  Permet de changer la date de l'os
date -d "2000-11-22 09:10:15"
#  Res. : Annee: 2023, Mois: 01, Jour: 09
date +"Annee: %Y, Mois: %m, Jour: %d"
#  Res.: DATE: 09/01/23 \n HEURE: 20:56:..
date "+DATE: %D%nHEURE: %T"
#  Res : Nombre de semaine: .. Annee: 23
date +"Nombre de semaine: %V Annee: %y"
#  Affiche les dates passées
date --date="2 year ago"
#  Remplacer un fuseau horaire
TZ='America/New_York' date
#
date +'%Y-%m-%d.%H.%M.%S'
```
