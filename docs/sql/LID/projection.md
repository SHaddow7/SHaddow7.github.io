---
layout: default
title: La projection
parent: LID
grand_parent: Postgresql
# nav_order: 5
---

### Syntaxe - Liste SELECT

```sql
--  Affiche tous les éléments présent dans la table
SELECT * FROM nom_table ;
-- Affiche uniquement le nom et les prénom des clients présent dans la table
SELECT nom, prenom FROM nom_table ;
```

### Syntaxe - Nommage d'une colonne -- alias

```sql
SELECT nom_col1, nom_col2 AS TEL FROM nom_table ;
SELECT nom_col1, nom_col2 AS "TEL" FROM nom_table ;
```

### Syntaxe - Traitement des doublons

```sql
SELECT DISTINCT nom_col FROM nom_table ;
```

### Syntaxe - Tri du résultat

```sql
SELECT nom_col1, nom_col2, nom_col3
FROM nom_table
ORDER BY nom_col_a_trier DESC ;
```

### Exécuter des requêtes avec psql

```sql
--  Lancer la commande psql à partir d'un terminal
psql [ option... ] [ nombase [ nomutilisateur ] ]
```

| Commandes | Descriptions                    |
| :-------: | :------------------------------ |
|    \?     | aide-mémoire des commandes psql |
|    \h     | aide-mémoire des commandes SQL  |
|    \q     | Pour sortir de psql             |
|    \d     | Liste des tables et description |
