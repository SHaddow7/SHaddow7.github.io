---
layout: default
title: Lien Symbolique et Physique
parent: Les Bases
nav_order: 4
---

## Lien Symbolique et Physique

```bash
# Syntaxe - Lien Symbolique
ln -s [OPTIONS] fichier_source nom_lien_symbolique

# Syntaxe - Lien Physique
ln [OPTIONS] fichier_source nom_lien
```

#### Exemples

```bash
ln -s fichier.txt lien.txt            #  Créer un lien symbolique vers un fichier
ln -s /home/stag/tp ~/mes_tp          #  Créer un lien symbolique vers un répertoire

ln /home/stag/fic home/lien_physique  #  Créer un lien physique vers un fichier
```

#### Exemples - Suppression de liens

```bash
# Usage n°1
unlink lien_a_supprimer
# Usage n°2
rm lien_a_supprimer
```
