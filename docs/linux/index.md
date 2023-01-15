---
layout: default
title: Linux
nav_order: 2
has_children: true
has_toc: false
---

## Aides

```bash
# Syntaxes
man [ -s X ] nom-de-commande
apropos [OPTIONS...] mot_clés
info [OPTIONS...]...
```

#### Exemples

```bash
man man # Obtient le manuel de man
man 5 passwd
man passwd.5
man 1 bash
```

```bash
# Lire la documentation de "info" avec `info`
apropos info | grep '^info.*('
man info
info info
info 5 info
```

```bash
# Lire la documentation d'informations bash
info bash
info bash 'Bash Features'
info bash 6
info --apropos bash
```

```bash
# Autres commandes
whatis nom-de-commande # Obtenir des informations sur des commandes
apropos "chaîne de recherche"
which commande # quelle commande sera lancer
```

## Quelques commandes Unix

#### Commandes utiles à connaitre

```bash
apropos # Liste les pages du manuel concernant un sujet
passwd  # Changer son propre mot de passe
exit    # Quitte l'interface du terminal
man     # Affiche le manuel pour des commandes
who     # Affiche qui est connecté
mount   # Affiche les systèmes de fichiers qui sont montés
echo    # Affiche le texte « texte » passé en argument
cat     # Affiche le contenu du fichier «fichier» passé en argument
type    # Obtenir les informations d'une commande
```

#### Commande sur les informations systèmes

```bash
date               # Affiche la date du jour
cal                # Affiche le calendrier
uptime             # Affiche la disponibilité
whoami             # Affiche le nom de l'utilisateur
uname -a           # Informations du noyau
cat /proc/cpuinfo  # Informations sur le cpu
df -h              # Espace disque libre
du -h              # Espace disque occupé par un fichier
free               # Etat de la mémoire et de la swap
wget               # Utiliser pour télécharger des fichiers depuis un serveur
```

#### Les catégories de commandes

| Catégorie de commande | Descriptions                                                                       |
| :-------------------: | ---------------------------------------------------------------------------------- |
|       Internes        | pas d'exécution d'un fichier tiers, pas de création de sous-processus associé      |
|       Externes        | exécution d'un fichier portant le nom de la commande, création d'un sous-processus |
