---
layout: default
title: Bash
#nav_order: 1
has_children: true
has_toc: false
---

## Introduction sur le BASH

Le Bash (Bourne-Again SHell) est un interpréteur de commandes utilisé sur de nombreux systèmes d'exploitation, notamment Linux et macOS. Il permet d'exécuter des commandes, de créer des scripts et de automatiser certaines tâches.

```bash
#!/bin/bash
# Le shibang indique à l'OS quel interpréteur utiliser pour exécuter le script.
# Il est recommandé de commencer chaque script Bash par la ligne "#!/bin/bash".
```

## Squelette bash

```bash
#!/bin/bash
# Programme qui ...
# Auteur :

# Les variables

# Les fonctions

# Le programme principal

# Sortie du programme
exit 0
```

## Méthodologie

Pour ouvrir un terminal Bash, il suffit de rechercher "terminal" dans le menu de votre système d'exploitation et de lancer l'application. Vous pouvez également utiliser un raccourci clavier, comme Ctrl + Alt + T sous Linux.

```bash
# Etapes de création d'un script bash :

#  1. Creer un fichier du nom fic.sh avec touch, nano, vi, etc ...
#  2. Changer les permissions du scripts afin qu'il soit exécutable et pouvant être lu
chmod u=rwx,g=rwx,o=rwx /home/user/script.sh
#  3. Lancer le script une fois que les instructions ont été écrites
/home/stag/fic.sh ou ./fic.sh
```

## Liens

[regex101: build, test, and debug regex](https://regex101.com/) <br/>
