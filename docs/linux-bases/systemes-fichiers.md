---
layout: default
title: Le système des fichiers
parent: Les Bases
nav_order: 1
---

## Le système des fichiers et les droits standards

```bash
# Syntaxe
ls [ OPTIONS ] # Liste les fichiers «ordinaires» dans le rép. courant

# Options
#    -l : Afficher une liste détaillée (long)
#    -a : Liste tous (all) les fichiers dans le rép. courant
#    -t : Liste tous les fichiers en les triant par date (time)
#    -S : Liste tous les fichiers en les triant par taille (size)
#    -r : Liste tous les fichiers en inversant l'ordre de tri (rev.)
```

#### Exemples - mkdir

```bash
mkdir rép                     # Créer un répertoire
mkdir ­-p rép1/rép2            # Créer des répertoires imbriqués
```

#### Exemples - cd

```bash
cd nouveau_rép                # Change de répertoire
cd ..                         # Répertoire parent
cd                            # Répertoire personnel
cd -                          # Retourner au dernier répertoire
cd ~alice                     # Répertoire personnel de alice
cd ~                          # Revenir au répertoire courrant
```

#### Exemples - cp

```bash
cp [-r] source destination    # copie de fichiers
cp fichier_orig fichier_dest  # Copier un fichier vers un autre
cp fichier1 fichier2 rép      # Copier des fichiers dans un rep.
cp ­-r rép_orig rép_dest       # Copier des répertoires entiers (rec.)
```

#### Exemples - mv

```bash
mv fichier_orig fichier_dest  # Renommer un fichier, lien ou  répertoire
```

#### Exemples - rm / rmdir

```bash
rm [-r] fichier           # Effacer un ou plusieurs fichiers
rm fichier1 fichier2      # Supprimer des fichiers ou des liens
rm ­-rf rép                # Supprimer un répertoire non vide (force)
rmdir rép                 # Supprimer un répertoire (remove dir)
```

#### Exemples - autres commandes

```bash
stat fichier              # Afficher les méta-données du fichier
touch fic                 # "Création" d'un fichier fic - modification de l'horodatage
diff fic_a.txt fic_b.txt  # Affiche les diff. entre les deux fichiers
pwd                       # Afficher répertoire courant (print working dir)
```
