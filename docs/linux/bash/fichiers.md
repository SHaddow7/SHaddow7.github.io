---
layout: default
title: Les fichiers
parent: Bash
grand_parent: Linux
nav_order: 5
---

## Opérations avec les fichiers

### Lecture des fichiers

#### Solution 1

```bash
#!/bin/bash
cat /etc/passwd | while read -r line; do
    # Traitement
    echo "$line"
done
```

#### Solution 2

```bash
#!/bin/bash
while read -r line; do
    echo "$line"
done </etc/passwd
```

#### Solution 3

```bash
#!/bin/bash
old_IFS=$IFS # sauvegarde du séparateur de champ
IFS=$'\n'    # nouveau séparateur de champ, le caractère fin de ligne sinon mot/mot
for line in $(cat /etc/passwd); do
    echo "$line"
done
IFS=$old_IFS # rétablissement du séparateur de champ par défaut
```

#### Solution 4

```bash
#!/bin/bash
old_IFS=$IFS # sauvegarde du séparateur de champ
# nouveau séparateur de champ, le caractère fin de ligne sinon mot/mot
while IFS=$'\n' read -r line; do
    echo "$line"
done </etc/passwd
IFS=$old_IFS # rétablissement du séparateur de champ par défaut
```

### Ecriture dans des fichiers

```bash
echo "Hello world !" >> fic.txt        #  Ajoute une chaîne de caractère à la fin d'un fichier
echo -e "Ligne 1 \nLine 2" > fic.txt   #  Ecrase le contenu fichier en ajoutant la nouvelle chaîne
cat fic1.txt fic2.txt > fic3.txt       #  Combine le contenu des 2 fichiers dans "fic3.txt"
cat > fic.txt                          #  Utilisation de la redirection de commande
nano fic.txt                           #  Utilisation des éditeurs de texte
```
