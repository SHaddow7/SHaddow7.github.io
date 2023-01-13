---
layout: default
title: Archivages
#nav_order: 1
has_toc: false
---

## Archivage et Compression

```bash
# Syntaxes
tar -c[v][P][f archive] fichier   # Création d'archive
tar -t[v][f archive]              # Liste des fichiers archivés
tar -x[v][P][f archive]           # Extraction de l'archive

# Options
#    c : créer
#    t : tester / lister
#    x : extraire
#    j : (dé)compression bzip2 / bunzip2 à la volée
#    z : (dé)compression gzip / gunzip à la volée
#    J : xz / unxz
```

```bash
# Exemples

# Créer une archive compressée
tar -jcvf archive.tar.bz2 /home/stag
tar -zcvf archive.tar.gz /home/stag

# Tester (lister) une archive compressée
tar -jtvf archive.tar.bz2
tar -ztvf archive.tar.gz

# Extraire les fichiers d'une archive compressée
tar -jxvf archive.tar.bz2
tar -zxvf archive.tar.gz
```

```bash
# Exemples : manipuler des archives zip
zip -­r archive.zip <files>    # créer
unzip -­t archive.zip          # tester / lister
unzip archive.zip             # extraire
```
