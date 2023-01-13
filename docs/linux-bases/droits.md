---
layout: default
title: Les droits standards
parent: Les Bases
nav_order: 2
---

## La sécurité des fichiers : les droits

> La commande `chmod` permet de changer des permissions à l’aide de la notation de texte

```bash
# Syntaxe :
chmod [OPTIONS] [ u g o a ]  [ – + = ] [ r, w, x ] fic

# Options
#    -c : signale uniquement lorsqu'une modification est apportée
#    -f : supprimer la plupart des messages d'erreur
#    -R : modifier les fichiers et les répertoires de manière récursive
```

```bash
# Exemples

# ---- [ Ajouter des permissions ]
# Attribut droits lecture / écriture au propriétaire (read, write)
# Ajouter droits d'exécution aux à tous (all)
chmod u=rw,a+x fic
# Attribut tous les droits lecture/écriture/exécution à tous (u, g, o)
chmod u=rwx,g=rwx,o=rwx fic
chmod 777 fic  # Attribut tous les droits sur fic à tous
chmod u+w fic  # Ajouter droits en écriture au propriétaire
chmod g+r fic  # Ajouter droits en lecture au groupe du fichier
chmod o+x fic  # Ajouter droits d'exécution aux autres utilisateurs
chmod a+rw fic # Ajouter droits lecture / écriture à tous (all)
chmod a+rX *   # Rendre fic. exécutables exécutables par tous

# ---- [ Supprimer les permissions ]
# Retire les permissions de lecture et d'exécution pour le propriétaire du fichier
chmod u-rx fic
# Retire les permissions de modification et d'exécution pour le groupe du fichier
chmod g-wx fic
# Retire toutes les permissions pour les autres utilisateurs
chmod o= fic

# ---- [ Autres ]
# Rendre le répertoire et tous les fichiers qu'il contient accessibles
# par tous les utilisateurs (recursive)
chmod -­R a+rX rép
# Changer le propriétaire et le groupe d'un répertoire et tout ce qu'il contient
chown -­R nouvproprio:nouvgroupe rép
```

Numéros d'autorisation de fichier

| Permissions | Valeurs | Descriptions                                            |
| :---------: | :-----: | ------------------------------------------------------- |
|    `rwx`    |    7    | Accorder tous les droits lecture / écriture / exécution |
|    `rw-`    |    6    | Accorder uniquement les droits de lecture / écriture    |
|    `r-x`    |    5    | Lecture, exécution                                      |
|    `r--`    |    4    | Lecture ( read )                                        |
|    `-w-`    |    2    | Ecriture ( write )                                      |
|    `--x`    |    1    | Exécution ( execute )                                   |
|    `---`    |    0    | Aucun accès                                             |

> [!tldr] TLDR
> Pour les débutant, il est conseiller d’écrire les permissions sous ce format :
>
> ```bash
> chmod u=rwx,g=rwx,o=rwx fic
> ```

```bash
# Changement du propriétaire du ou des fichiers ou répertoires listés dans la commande "chown".
chown nom_utilisateur [fic | rep]

# Positionne des droits sur les actions de l’utilisateur durant sa session.
umask [ droits ]

# Exemples
umask 000 # (ne fait rien)
umask 022 # (rw-r—r--)
umask 027 # (rw-r-----)

#  Retire les permissions de lecture et d'exécution pour le propriétaire du fichier
umask u-rx
#  Retire les permissions de modification et d'exécution pour le groupe du fichier
umask g-wx
#  Retire les permissions de modification et de lecture pour les autres utilisateurs
umask o-rw

```

> [!NOTE] Notes
> Il est important de noter que la commande "umask" ne modifie pas les permissions des fichiers et répertoires existants, mais uniquement celles des nouveaux fichiers et répertoires créés par la suite.
> Par défaut, les droits pour utilisateur sont à 777 (rwxrwxrwx) pour les répertoire, 666 (-wx-wx-wx) pour les fichiers.
