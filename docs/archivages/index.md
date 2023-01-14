---
layout: default
title: Archivages
has_toc: false
---

## Archivage et Compression

### Tar

```bash
# Syntaxes
tar -c[v][P][f archive] fichier   # Création d'archive
tar -t[v][f archive]              # Liste des fichiers archivés
tar -x[v][P][f archive]           # Extraction de l'archive

# Options
#    c : Créer
#    t : Tester / Lister
#    x : Extraire
#    j : (dé)compression bzip2 / bunzip2 à la volée
#    z : (dé)compression gzip / gunzip à la volée
#    J : xz / unxz
#    v : Affiche une description verbeuse de la progression de la compression
#    a : Concatener les fichiers d'archive
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

### Zip et Unzip

```bash
# Syntaxe
zip [options] archive.zip fichier1 fichier2 ...

# Options
#    -q : Supprime la sortie de la commande
#    -r : Créer une archive en traversant la structure de répertoire entière récursive
#    -[0-9] : Permet de spécifier le niveau de compression (par défaut = -6)
#    -e : Créer un fichier ZIP protégé par un mot de passe

# Exemples
zip archive.zip fichier1.txt fichier2.txt
zip -­r archive.zip repertoire
zip -e archive.zip repertoire # Créer un fichier ZIP protégé par un mot de passe
zip archive *                 # Créer une archive ZIP contenant tous les fichiers du répertoire actuel
zip archive .*                # Créer une archive ZIP contenant tous les fichiers caché du répertoire actuel
zip -0 archive * .mp3         # Créez un fichier ZIP contenant tous les fichiers MP3 du répertoire actuel
                              # sans compresser les fichiers (-0).
```

```bash
# Syntaxe
unzip [options] archive.zip fichier1 fichier2 ...

# Options
#    -t : Teste les fichiers archive

# Exemples
unzip archive.zip      # Liste, Teste ou Extrait des fichiers à partir d'une archive ZIP
unzip -­t archive.zip   # Teste tous les fichiers archive
```
