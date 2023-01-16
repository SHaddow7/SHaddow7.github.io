---
layout: default
title: LMD
parent: Postgresql
has_children: true
nav_order: 3
---

# Langage deManipulation desDonnées

## Insertion de lignes

```sql
INSERT INTO nom_table [ (col1 [, col2 … ] ) ]
VALUES (val1 [, val2 … ] ) ;
```

## Copie de lignes

```sql
INSERT INTO nom_table [ (col1 [,col2 … ] ) ] requête ;
```

## Mise à jour de lignes

```sql
UPDATE nom_table
    SET nom_col = val [,nom_col = val ...]
    [ WHERE condition ] ;
```

## Suppression de lignes

```sql
DELETE FROM nom_table
    [ WHERE condition ] ;
```

## Séquence - Utilisation

```sql
--  Obtenir une valeur
nextval('nom_séquence')
--  Dernière valeur obtenue dans la session
currval('nom_séquence')
```
