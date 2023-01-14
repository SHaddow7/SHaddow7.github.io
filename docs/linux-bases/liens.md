---
layout: default
title: Lien Symbolique et Physique
parent: Les Bases
nav_order: 4
---

## Lien Symbolique et Physique

```bash
# Syntaxe - Lien Symbolique
ln -s [OPTIONS] fichier lien

# Syntaxe - Lien Physique
ln [OPTIONS] fichier lien
```

#### Exemples

```bash
ln -s fichier_source lien_symbolique  #  Créer un lien symbolique vers un fichier
ln -s fichier.txt lien.txt            #  Créer le lien "lien.txt" qui pointe "fichier.txt"
ln -s /home/stag/tp ~/mes_tp          #  Créer un lien symbolique qui pointe vers un répertoire

#  Vérifier que le lien à été creer
ls -l my_link.txt
# > [SORTIE]
lrwxrwxrwx 1 stag users  9 Jan  2 21:06  lient.txt -> fichier.txt
```

#### Exemples - Suppression de liens

```bash
# Usage n°1
unlink lien_a_supprimer
# Usage n°2
rm lien_a_supprimer
```
