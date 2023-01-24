---
layout: default
title: Les droits standards
parent: Les Bases
grand_parent: Linux
nav_order: 2
---

# La sécurité des fichiers : les droits

## chmod

---

{: .note }

> La commande `chmod` permet de changer des permissions à l’aide de la notation de texte

```bash
# Syntaxe :
chmod [OPTIONS] [ u g o a ]  [ – + = ] [ r, w, x ] fic

# Options
#    -r : (Récursif) inclut les mêmes droits dans les sous répertoires
#    -R : modifier les fichiers et les répertoires de manière récursive
#    -c : signale uniquement lorsqu'une modification est apportée
#    -f : (Force) supprimer la plupart des messages d'erreur
```

#### Exemples - Ajouter des permissions

```bash
chmod u=rwx,g=rwx,o=rwx fic    #  Attribut tous les droits (lecture/écriture/exécution) à tous (u, g, o)
chmod u+w fic                  #  Ajouter droits en écriture au propriétaire
chmod g+r fic                  #  Ajouter droits en lecture au groupe du fichier
chmod o+x fic                  #  Ajouter droits d'exécution aux autres utilisateurs
chmod a+rw fic                 #  Ajouter droits lecture / écriture à tous (all)
chmod 777 fic                  #  Attribut tous les droits sur fic à tous (forme octal)
chmod u=rw,a+x fic             #  Attribut les droits de lecture/écriture au propriétaire (u)
                               #  et ajoute droit d'exécution à tous (a)
```

#### Exemples - Supprimer les permissions

```bash
chmod u-rx fic  # Retire les droits de lecture et d'exécution pour le propriétaire
chmod g-wx fic  # Retire les droits de modification et d'exécution pour le groupe
chmod o= fic    # Retire toutes les droits pour les autres utilisateurs
```

#### Exemples - Autres

```bash
# Rendre le répertoire et tous les fichiers qu'il contient accessibles
# par tous les utilisateurs (recursive)
chmod -­R a+rx rép/
```

#### Numéros d'autorisation de fichier

| Permissions | Valeurs | Descriptions                                            |
| :---------: | :-----: | ------------------------------------------------------- |
|    `rwx`    |    7    | Accorder tous les droits lecture / écriture / exécution |
|    `rw-`    |    6    | Accorder uniquement les droits de lecture / écriture    |
|    `r-x`    |    5    | Lecture, exécution                                      |
|    `r--`    |    4    | Lecture ( read )                                        |
|    `-w-`    |    2    | Ecriture ( write )                                      |
|    `--x`    |    1    | Exécution ( execute )                                   |
|    `---`    |    0    | Aucun accès                                             |

{: .note }

> Pour les débutants, il est conseiller d’écrire les permissions sous ce format :
>
> ```bash
> chmod u=rwx,g=rwx,o=rwx fic
> ```

## umask

---

{: .note }

> La commande `umask` permet de définir les permissions par défaut pour les nouveaux fichiers et répertoires créés dans un système de fichiers.
>
> Le masque qui est mis en argument permet de déterminer les permissions qui ne seront pas accordées aux nouveaux fichiers et aux répertoires.
>
> Par défaut, les droits pour utilisateur sont à 777 (rwxrwxrwx) pour les répertoire, 666 (rw-rw-rw-) pour les fichiers.


#### Syntaxe

```bash
# Syntaxe
umask [ DROITS ]
```

#### Exemples

```bash
umask       #  Affiche le masque actuel en notation octale
```

```bash
umask 000   #  ( ne fait rien )
umask 022   #  ( rw-r—-r-- )
umask 027   #  ( rw-r----- )
```

```bash
umask u-rx  #  Retire les droits de lecture et d'exécution pour le propriétaire
umask g-wx  #  Retire les droits de modification et d'exécution pour le groupe
umask o-rw  #  Retire les droits de modification et de lecture pour les autres utilisateurs
```

{: .note }

> Il est important de noter que la commande "umask" ne modifie pas les permissions des fichiers et répertoires existants, mais uniquement celles des nouveaux fichiers et répertoires créés par la suite.

## chown

---

```bash
# Changement du propriétaire du ou des fichiers ou répertoires listés dans la commande "chown".
chown nom_utilisateur [fic | rep]
```
