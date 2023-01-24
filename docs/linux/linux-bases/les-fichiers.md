---
layout: default
title: Les fichiers
parent: Les Bases
grand_parent: Linux
nav_order: 3
---

# Les fichiers

## Les types de fichiers

```plaintext
–  :  fichier régulier.
d  :  répertoire.
c  :  fichier de périphériques.
b  :  fichier de périphérique en bloc.
s  :  fichier de socket local.
p  :  pipe nommé.
l  :  lien symbolique.
```

## Création de fichiers

#### Exemples - Savoir créer un fichier

```bash
touch fic.txt                                  #  Créer un fichier vide nommé "fic.txt"
echo "Hello World!" > fic.txt                  #  Créer un fichier nommé "fic.txt" et y écrire du contenu
echo "Ceci est du contenu" >> fic.txt          #  Ajouter du contenu à un fichier existant
cp fic1.txt fic2.txt                           #  Créer un fichier à partir d'un autre fichier
ln -s existing_file.txt symbolic_link.txt      #  Créer un lien symbolique d'un fichier
```

## Edition de fichiers

### Quelques éditeurs

|              Éditeurs              |          Exemples           |
| :--------------------------------: | :-------------------------: |
|             Graphique              | gedit, kate / kwrite, geany |
|            Historiques             |           vi, vim           |
| Non graphique et ligne de commande |           vi, vim           |

#### Exemples

```bash
gedit /home/stag/fichier.txt    # Ouvre "fichier.txt" avec l'éditeur "gedit"
nano ~/fichier.txt              # Ouvre "fichier.txt" avec l'éditeur "nano"
emacs ~/fichier.txt             # Ouvre "fichier.txt" avec l'éditeur "emacs"
vi ~/fichier.txt                # Ouvre "fichier.txt" avec l'éditeur "vi"
vim ~/fichier.txt               # Ouvre "fichier.txt" avec l'éditeur "vim"
```
