---
layout: default
title: Requêtes multi-tables
parent: LID
grand_parent: Postgresql
---

## Jointure entre tables

```sql
--  Deux façons d’écrire les jointures
--  Norme 89
SELECT …
    FROM table1, table2
    WHERE table1.col = table2.col;

--  Norme 92
SELECT …
    FROM table1 [inner] JOIN table2
    ON table1.col = table2.col;
```

! Si la condition de jointure est omise, PostegreSQL exécute un produit cartésien

## Equi-jointure

{: .note}

> La jointure est indiquée par la clause [INNER] JOIN
>
> La condition de jointure utilise l'opérateur d'égalité (=)

```sql
SELECT
    c.nom AS "Nom",
    c.prenom AS "Prénom",
    v.nom AS "Ville"
    FROM client c
    INNER JOIN ville v
    ON c.codepostal = v.codepostalORDER BY "Nom"
;
```

#### Exemples

{: .note}

> Ajout d'une condition de sélection sur le codepostal

```sql
SELECT
    c.nom AS "Nom",
    c.prenom AS "Prénom",
    v.nom AS "Ville"
    FROM client c
    INNER JOIN ville v
    ON c.codepostal = v.codepostal
    WHERE c.codepostal = '31000'
    ORDER BY "Nom"
;
```
