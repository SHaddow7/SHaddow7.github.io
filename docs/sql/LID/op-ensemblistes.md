---
layout: default
title: Opérateurs ensemblistes, Requêtes imbriquées
parent: LID
grand_parent: Postgresql
---

## Opérateurs ensemblistes

#### Syntaxes

```sql
Sous-requête1  UNION     [ALL]  Sous-requête2
Sous-requête1  INTERSECT [ALL]  Sous-requête2
Sous-requête1  EXCEPT    [ALL]  Sous-requête2
```

#### Exemple

```sql
SELECT film_idFROM concernerGROUP BY film_idHAVING COUNT(*) >= 2
    UNION
SELECT film_idFROM filmWHERE millesime > 2010
ORDER BY film_id ASC ;
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

#### Exemple

```sql
SELECT titre AS "Titre"
FROM film
WHERE genre_id =
( SELECT genre_id FROM film
WHERE titre = 'volver' )
ORDER BY titre ;
```

## Sous-interrogation multi-lignes

```sql
SELECT titre FROM film
WHERE code_prix IN (SELECT code_prix
FROM prix
WHERE streaming < 1) ;
```

## Requêtes imbriquées synchronisées

#### Syntaxe - Exemple

```sql
SELECT ...
    FROM table t1t1
    WHERE ...
    ( SELECT ... FROM table t2
    WHERE t1t1.col1 = t2.col2 )
```

#### Exemple

```sql
SELECT c1c1.nom, c1c1.date_inscrit, c1c1.codepostal
    FROM client c1c1
    WHERE c1c1.date_inscrit = (
        SELECT min(c2.date_inscrit)
            FROM client c2
            WHERE c2c2.codepostal = c1c1.codepostal )
    ORDER BY c1c1.codepostal ASC ;
```
