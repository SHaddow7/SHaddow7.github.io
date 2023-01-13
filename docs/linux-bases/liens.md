---
layout: default
title: Lien Symbolique et Physique
parent: Les Bases
nav_order: 1
---

## Lien Symbolique et Physique

```bash
# Syntaxe - Lien Symbolique
ln -s [OPTIONS] fichier lien

# Syntaxe - Lien Phisyque
ln [OPTIONS] fichier lien
```

```bash
# Exemple (s)

#  Créer un lien symbolique vers un fichier
ln -s fichier_source lien_symbolique
#  Créer un lien qui se nomme lient.txt et qui pointe le fichier.txt
ln -s fichier.txt lien.txt

#  Vérifier que le lien à été creer
ls -l my_link.txt
# > [SORTIE]
lrwxrwxrwx 1 stag users  9 Jan  2 21:06  lient.txt -> fichier.txt

#  Créer un lien symbolique qui pointe vers un répertoire
ln -s /home/stag/tp ~/mes_tp
# Supprimer un lien (deux façon de le faire)
unlink lien_a_supprimer
rm lien_a_supprimer

```
