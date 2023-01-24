---
layout: default
title: Linux
nav_order: 2
has_children: true
has_toc: false
---

## Aides

#### Syntaxes

```bash
# Syntaxes                    #  Descriptions :
man [ OPTIONS ] commande      #  Affiche le manuel d'une commande
apropos [ OPTIONS ] mot_cle   #  Cherche le nom et la description des pages de manuel en utilisant des mots-clés
info [ OPTIONS ] commande     #  Affiche des info. sur un logiciels/commandes
whatis commande               #  Affiche une courte description d'une commande/programme
which commande                #  Affiche le chemin d'accès complet d'une commande/programme exécutable
```

#### Exemples

```bash
man man              # Obtient le manuel de man
man 5 passwd         # Affiche la section 5 du manuel de passwd
man passwd.5         # Similaire à la commande précédente
man 1 bash           # Affiche la section 1 du manule de bash
```

```bash
apropos alice                  # Recherche des commandes contenant le mot "alice"
apropos reseau                 # Recherche des commandes contenant le mot "reseau"
apropos info | grep '^info.*(' # Recherche des commandes contenant le mot "info"
                               # et filtre uniquement les commandes commençant par "info."
```

```bash
info info                  # Affiche la page d'aide le commande "info"
info bash                  # Affiche la page d'aide le commande "bash"
info bash 6                # Affiche les informations relatives à la section 6 du manuel bas
```

## Quelques commandes Unix

#### Commandes utiles à connaitre

```bash
cat           #  Affiche le contenu du fichier «fichier» passé en argument
echo          #  Affiche le texte « texte » passé en argument
exit          #  Quitte l'interface du terminal
mount         #  Affiche les systèmes de fichiers qui sont montés
passwd        #  Change son propre mot de passe
passwd  alice #  Change le mot de passe d'alice
type          #  Obtenir les informations d'une commande
```

#### Commande sur les informations systèmes

```bash
date               #  Affiche la date du jour
cal                #  Affiche le calendrier
uptime             #  Affiche la disponibilité
whoami             #  Affiche le nom de l'utilisateur
who                #  Affiche tous les utilisateurs connectés sur le système
w                  #  Affiche tous les utilisateurs connectés et les processus leur appartenant
uname -a           #  Informations du noyau
cat /proc/cpuinfo  #  Informations sur le cpu
df -h              #  Espace disque libre
du -h              #  Espace disque occupé par un fichier
free               #  Etat de la mémoire et de la swap
wget               #  Utiliser pour télécharger des fichiers depuis un serveur
```

#### Les catégories de commandes

| Catégorie de commande | Descriptions                                                                       |
| :-------------------: | ---------------------------------------------------------------------------------- |
|       Internes        | pas d'exécution d'un fichier tiers, pas de création de sous-processus associé      |
|       Externes        | exécution d'un fichier portant le nom de la commande, création d'un sous-processus |
