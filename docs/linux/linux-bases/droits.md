---
layout: default
title: Les droits standards
parent: Les Bases
grand_parent: Linux
nav_order: 2
---

# La sécurité des fichiers : les droits

## Numéros d'autorisation de fichier

| Permissions | Valeurs | Descriptions                                            |
| :---------: | :-----: | ------------------------------------------------------- |
|    `rwx`    |    7    | Accorder tous les droits lecture / écriture / exécution |
|    `rw-`    |    6    | Accorder uniquement les droits de lecture / écriture    |
|    `r-x`    |    5    | Lecture, exécution                                      |
|    `r--`    |    4    | Lecture ( read )                                        |
|    `-w-`    |    2    | Ecriture ( write )                                      |
|    `--x`    |    1    | Exécution ( execute )                                   |
|    `---`    |    0    | Aucun accès                                             |

## chmod

---

{: .note }

> La commande `chmod` permet de changer des permissions à l’aide de la notation de texte
>
> Il est conseiller d’écrire les permissions sous ce format :
>
> ```bash
> chmod u=rwx,g=rwx,o=rwx fic
> ```

```bash
# Syntaxe :
chmod [OPTIONS] [ u g o a ]  [ – + = ] [ r, w, x ] Fichier / Repertoire

# Options
#    -r : (Récursif) inclut les mêmes droits dans les sous répertoires
#    -R : modifier les fichiers et les répertoires de manière récursive
#    -c : signale uniquement lorsqu'une modification est apportée
#    -f : (Force) supprimer la plupart des messages d'erreur
```

#### Exemples - Ajouter des permissions

```bash
chmod -­R a+rx rép/             #  Rend le répertoire et tous les fichiers qu'il contient accessibles à tous
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
chmod u-rx fic  #  Retire les droits de lecture et d'exécution pour le propriétaire
chmod g-wx fic  #  Retire les droits de modification et d'exécution pour le groupe
chmod o= fic    #  Retire toutes les droits pour les autres utilisateurs
```

## umask

---

{: .note }

> `umask` - permet de définir les permissions par défaut pour les nouveaux fichiers et répertoires créés dans un système de fichiers. Elle permet de spécifier les permissions qui seront masquées ou retirées des permissions par défaut lors de la création de nouveaux fichiers et répertoires.
>
> Par défaut, les droits pour les répertoires sont à `777 (rwxrwxrwx)` et `666 (rw-rw-rw-)` pour les fichiers.
>
> Il est important de noter que la commande "umask" ne modifie pas les permissions des fichiers et répertoires existants, mais uniquement celles des nouveaux fichiers et répertoires créés par la suite.

#### Syntaxe

```bash
# Syntaxe
umask [ OPTIONS ] [ MASQUE ]
```

#### Exemples

```bash
umask                      #  Affiche le masque actuel en notation octale
umask -S                   #  Affiche le masque actuel en forme symbolique
umask -S u=rwx,g=rwx,o=rx  #  Retire les droits de lecture/écriture/exécution pour le propriétaire,
                           #  Retire les droits de lecture/écriture/exécution pour le groupe,
                           #  Retire les droits de lecture/exécution pour les autres utilisateurs
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

## chown

---

{: .note }

> `chown` - permet de changer le propriétaire du ou des fichiers ou répertoires listés dans la commande "chown".

```bash
chown nom_utilisateur [FICHIER | REPERTOIRE]
```
