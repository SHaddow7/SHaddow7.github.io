---
layout: default
title: Variables d’environnements
parent: Linux
nav_order: 8
---

## Les variables d’environnements

{: .note }

> Le Bash utilise des variables d'environnement pour stocker des informations sur le système et sur les préférences de l'utilisateur. Vous pouvez afficher la liste des variables d'environnement en utilisant la commande `printenv`.

| Commandes         | Descriptions                                                       |
| ----------------- | ------------------------------------------------------------------ |
| env               | Affiche les variables environnements                               |
| echo $NAME        | Appel une variable d’environnement par son nom                     |
| export NAME=value | Créer une variable                                                 |
| $PATH             | Affiche le chemin de recherche                                     |
| $HOME             | Affiche le répertoire d’accueil                                    |
| $SHELL            | Le shell courant                                                   |
| $MANPATH          | Liste de dossiers où le système doit chercher les pages de manuel. |
| $LOGNAME          | Affiche le nom d'utilisateur courant                               |
| export LC_ALL=    | Efface le contenu de la variable                                   |
| unset LCALL       | Supprimer complètement une variable d'environnement                |

### Quelques variables de paramètres régionaux

| Commandes   | Descriptions                                                              |
| ----------- | ------------------------------------------------------------------------- |
| LANG        | Le paramètre linguistique de base utilisé par les applications du système |
| LC_CTYPE    | Le jeu de caractères utilisé pour saisir et afficher du texte             |
| LC_NUMERIC  | Mise en forme des valeurs numériques non-monétaires                       |
| LC_TIME     | Format de la date et de l'heure                                           |
| LC_COLLATE  | Comment trier diverses informations                                       |
| LC_MONETARY | Format des valeurs numériques monétaires                                  |
