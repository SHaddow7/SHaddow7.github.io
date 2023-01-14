---
layout: default
title: Vim
---

## Aides mémoire vim

### Déplacement des curseurs

| Commandes | Descriptions           |
| :-------: | ---------------------- |
|     h     | vers la gauche         |
|     j     | vers le bas            |
|     k     | vers le haut           |
|     l     | vers la droite         |
|     0     | début de ligne         |
|     b     | début de mot précédent |
| <Ctrl\> b | page précédente        |
|     g     | dernière ligne         |
|     $     | fin de ligne           |
|     w     | début de mot suivant   |
|  <Ctr\>f  | page suivante          |
|    nG     | ligne n                |

### Insertion

| Commandes | Descriptions                      |
| :-------: | --------------------------------- |
|     i     | insère avant le curseur           |
|     I     | insère en début de ligne          |
|     a     | insère après le curseur           |
|     A     | insère en fin de ligne            |
|     o     | insère une ligne après le curseur |
|     O     | insère une ligne avant le curseur |

### Edition

| Commandes | Descriptions                  |
| :-------: | ----------------------------- |
|    dd     | coupe la ligne                |
|    dw     | coupe jusqu'au mot suivant    |
|    d0     | coupe jusqu'au début de ligne |
|    d$     | coupe jusqu'à la fin de ligne |
|    yy     | copie la ligne                |
|    yw     | copie jusqu'au mot suivant    |
|    y0     | copie jusqu'au début de ligne |
|    y$     | copie jusqu'à la fin de ligne |
|     x     | supprime 1 caractère          |
|     p     | colle après le curseur        |
|     P     | colle avant le curseur        |
|     .     | répète la dernière commande   |
|     u     | annule la dernière commande   |
|     U     | restaure la ligne modifiée    |

### Enregistrement

| Commandes  | Descriptions            |
| :--------: | ----------------------- |
|     :w     | enregistre              |
| :w fichier | enregistre sous fichier |
|     :q     | sort                    |
|    :q!     | sort sans enregistrer   |
|    :wq     | enregistre et sort      |

### Recherche

| Commandes | Descriptions                   |
| :-------: | ------------------------------ |
|  /chaine  | recherche chaîne en descendant |
|  ?chaine  | recherche chaîne en montant    |
|     n     | occurrence suivante            |
|     N     | occurrence précédente          |

### Options

|   Commandes    | Descriptions               |
| :------------: | -------------------------- |
|    :set all    | affiche toutes les options |
|  :set number   | numérote les lignes        |
| :set tabstop=n | une tabulation = n espaces |

### Divers

| Commandes             | Descriptions                          |
| :-------------------- | ------------------------------------- |
| :1,$s/chaîne/CHAINE/g | remplace chaîne par CHAINE partout    |
| :! cmd                | exécute la commande cmd               |
| :r! cmd               | insère le résultat de la commande cmd |

## Liens

[Vim - Cheatsheet](https://devhints.io/vim) <br/>
