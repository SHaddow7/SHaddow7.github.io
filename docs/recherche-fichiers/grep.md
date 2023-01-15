---
layout: default
title: Grep
parent: Recherches de fichiers
# nav_order: 7
---

### grep

{: .note }

> `grep` - permet de rechercher un / des patterne(s) dans un fichier

```bash
# Syntaxe
grep [OPTIONS] MOTIF [FICHIER...]
grep [OPTIONS] [-e MOTIF | -f FICHIER] [FICHIER...]

# Options
#    -i : Recherche un terme en ignorant la casse
#    -r : Recherche récursive
#    -v : Inverse la recherche
#    -o : Affiche seulement les parties (non vide) correspondantes d'une ligne
#    -n : Affiche les lignes sélectionnées et leur n° de ligne
```

#### Exemples

```bash
#  Recherche un motif dans un fichier
grep pattern fic
#  Recherche un motif dans plusieurs fichiers
grep pattern fic1.txt fic2.txt fic3.txt
#  Recherche un motif dans tous les fichiers d'un répertoire
grep pattern *
```

```bash
#  Recherche un motif dans tous les fichiers d'un répertoire et de ses sous-répertoires
grep -r pattern .
#  Recherche un motif et affiche les numéros de ligne des lignes correspondantes
grep -n pattern fic.txt
#  Recherche un motif et affiche le contexte des lignes correspondantes
grep -C 3 pattern fic.txt
#  Recherche un modèle et affiche uniquement les noms des fichiers qui contiennent une correspondance
grep -l pattern fic1.txt fic2.txt fic3.txt
#  Recherche un modèle et affiche uniquement les lignes qui ne contiennent PAS de correspondance :
grep -v pattern fic.txt
#  Sélectionner les lignes du flux contenant un « motif » donné
grep "root" /etc/passwd
```

```bash
grep -E "ceci est un motif"  #  Tri sur motif(s) en expressions régulières
grep -E "^(0[1-9]|1[0-2])$"  #  Recherche les lignes qui ont ce format (de 01 à 12)
```
