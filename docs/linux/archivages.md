---
layout: default
title: Archivages
has_toc: false
parent: Linux
nav_order: 5
---

## Archivage et Compression

### Tar

```bash
# Syntaxes
tar -c[v][P][f archive] fichier   #  Création d'archive
tar -t[v][f archive]              #  Liste des fichiers archivés
tar -x[v][P][f archive]           #  Extraction de l'archive

# Options
#    -c :  Créer une nouvelle archive
#    -f	:  Créer des archives avec le nom de fichier donné
#    -t :  Liste le contenu d'une archive
#    -r :  Joindre des fichiers à la fin d'une archive
#    -x :  Extrait les fichiers d'une archive existante

#    -j :  Format de compression - bzip2 / bunzip2
#    -J :  Format de compression - xz / unxz
#    -z :  Format de compression - gzip / gunzip

#    -A :  Ajoute des fichiers tar à une archive
#    -v :  Affiche une description verbeuse de la progression de la compression
```

#### Exemples

```bash
#  Créer une archive compressée
tar -cjf archive.tar.bz2 /home/stag  #  Archive avec un format de compression bzip2
tar -cJf archive.tar.xz /home/stag   #  Archive avec un format de compression xz
tar -czf archive.tar.gz /home/stag   #  Archive avec un format de compression gzip
```

```bash
#  Lister le contenu d'une archive compressée
tar -tjf archive.tar.bz2
tar -tJf archive.tar.xz
tar -tzf archive.tar.gz
```

```bash
#  Extraire les fichiers d'une archive compressée
tar -xjf archive.tar.bz2
tar -xJf archive.tar.xz
tar -xzf archive.tar.gz
```

### Zip

```bash
# Syntaxe
zip [options] archive.zip fichier1 fichier2 ...

# Options
#    -q : Supprime la sortie de la commande
#    -r :  Créer une archive en traversant la structure de répertoire entière récursive
#    -[0-9] : Permet de spécifier le niveau de compression (par défaut = -6)
#    -e : Créer un fichier ZIP protégé par un mot de passe
```

#### Exemples

```bash
zip archive.zip fichier1.txt fichier2.txt
zip -­r archive.zip repertoire
zip -e archive.zip repertoire # Créer un fichier ZIP protégé par un mot de passe
zip archive *                 # Créer une archive ZIP contenant tous les fichiers du répertoire actuel
zip archive .*                # Créer une archive ZIP contenant tous les fichiers caché du répertoire actuel
zip -0 archive * .mp3         # Créez un fichier ZIP contenant tous les fichiers MP3 du répertoire actuel
                              # sans compresser les fichiers (-0).
```

### Unzip

#### Syntaxe

```bash
# Syntaxe
unzip [options] archive.zip fichier1 fichier2 ...

# Options
#    -t :  Teste les fichiers archive
```

#### Exemples

```bash
unzip archive.zip      #  Liste, Teste ou Extrait des fichiers à partir d'une archive ZIP
unzip -­t archive.zip   #  Teste tous les fichiers archive
```
