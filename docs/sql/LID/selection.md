---
layout: default
title: La sélection
parent: LID
grand_parent: Postgresql
---

## La clause WHERE

#### Syntaxe

```sql
SELECT [ ALL | DISTINCT ]
* | expression [ [ AS ] alias ] [, ...]
[ FROM nom_table ]
[ WHERE condition ]
[ ORDER BY expression [ ASC | DESC ] [, …] ]
;
```

#### Syntaxe

```sql
SELECT nom_colonne
FROM nom_table
WHERE nom_colonne = ... ;
```

#### Exemple

```sql
SELECT nom, prenom
FROM client
WHERE codepostal = '31000' ;
```

## Opérateurs

#### Syntaxe - opérateur IN

```sql
SELECT nom_colonne
FROM nom_table
WHERE nom_colonne IN (valeur1, valeur2, ...) ;
```

### Opérateur de comparaisons

| Opérateurs | Descriptions        |
| :--------: | :------------------ |
|     <      | Inférieur à         |
|     <=     | Inférieur ou égal à |
|     >      | Supérieur à         |
|     >=     | Supérieur ou égal à |
|     ==     | Egal à              |
|     !=     | Différent de        |

### Opérateurs de comparaisons spécifiques

| Opérateurs              | Descriptions                        |
| :---------------------- | :---------------------------------- |
| IS NULL                 | teste NULL                          |
| IS NOT NULL             | teste la différence avec NULL       |
| BETWEEN ... AND ...     | définition d'un intervalle incluant |
| NOT BETWEEN ... AND ... | définition d'un intervalle excluant |

#### Exemples

```sql
SELECT nom, telephone
FROM client
WHERE telephone IS NOT NULL ;
```

```sql
SELECT code_prix
FROM prix
WHERE dvd BETWEEN 15 AND 20 ;
```

## Correspondance de motif

### L'opérateur : LIKE

| Opérateurs | Descriptions                                      |
| :--------- | :------------------------------------------------ |
| %          | correspond à une suite quelconque de caractères   |
| \_         | correspond à un (et un seul) caractère quelconque |

#### Exemples

```sql
SELECT titre
FROM film
WHERE titre LIKE '%femme%' ;
```

```sql
SELECT nom, prenom
FROM client
WHERE codepostal LIKE '31___' ;
```

## Cumul de conditions

#### Exemples

```sql
SELECT col FROM table WHERE cond1 AND cond2 ;
SELECT col FROM table WHERE cond1 OR cond2 ;
SELECT col FROM table WHERE cond1 AND ( cond2 OR cond3 ) ;
```
