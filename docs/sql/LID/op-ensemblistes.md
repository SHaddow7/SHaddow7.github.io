---
layout: default
title: Opérateurs ensemblistes, Requêtes imbriquées
parent: LID
grand_parent: Postgresql
# nav_order: 5
---

## Opérateurs ensemblistes

#### Syntaxes

```sql
Sous-requête1  UNION     [ALL]  Sous-requête2
Sous-requête1  INTERSECT [ALL]  Sous-requête2
Sous-requête1  EXCEPT    [ALL]  Sous-requête2
```

## Requêtes imbriquées

#### Syntaxe

```sql
SELECT < liste_selection >
    FROM table
    WHERE exp opérateur
        ( SELECT … FROM table WHERE … )
    [ ORDER BY … ] ;
```

## Sous-interrogation mono-ligne

## Sous-interrogation multi-lignes

## Requêtes imbriquées synchronisées

#### Syntaxe - Exemple

```sql
SELECT c1c1.nom, c1c1.date_inscrit, c1c1.codepostal
    FROM client c1c1
    WHERE c1c1.date_inscrit = (
        SELECT min(c2.date_inscrit)
            FROM client c2
            WHERE c2c2.codepostal = c1c1.codepostal )
    ORDER BY c1c1.codepostal ASC ;
```
