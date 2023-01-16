---
layout: default
title: Whereis
parent: Recherches de fichiers
grand_parent: Linux
---

### whereis

{: .note }

> **`whereis`** - utilisée pour localiser les fichiers binaires, source et de page de manuel pour une commande donnée.

```bash
# Syntaxe
whereis [options] commande

# Options
#    -l : Recherche les répertoires dans lesquels la commande whereis recherche.
#    -p : Recherche uniquement les binaires de commande
#    -s : Recherche uniquement les fichiers source
#    -m : Recherche uniquement les fichiers man
```

#### Exemples

```bash
#  Localise les fichiers binaires, source et de page de manuel pour la commande "ls"
whereis ls
#  Recherche uniquement le fichier binaire pour la commande "ls"
whereis -b ls
#  Recherche uniquement le fichier de la page de manuel de la commande "ls"
whereis -m ls
#  Recherche toutes les fichiers binaires, sources et manuels de tous les commandes présent sur l'os
whereis -b -s -m *
```
