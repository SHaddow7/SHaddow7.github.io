---
layout: default
title: Les alias
parent: Les Bases
nav_order: 7
---

## Utilisation des alias

{: .note }

> Les alias sont des raccourcis de commandes que l'on crée pour éviter de saisir des commandes trop longue.
>
> Il est possible de créer un alias permanent en ajoutant ces commandes dans un fichier de configuration, tels que `.bashrc` ou `.bash_aliases` dans le repertoire personnel.

```bash
# Syntaxe - Création d'un alias
alias nom_alias='commande'

# Syntaxe - Suppression d'un alias
unalias ll
```

#### Exemples - Création d'un alias

```bash
alias ll='ls -la'             #  Créer un alias pour la commande ls -la
alias rmd='rm -rfv'           #  Créer un alias pour la commande rm -rfv
alias go='cd $HOME/document'  # Créer un alias en utilisant des variables
```
