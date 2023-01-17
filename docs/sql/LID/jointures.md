---
layout: default
title: Les jointures
parent: LID
grand_parent: Postgresql
---

## Les jointures internes

### INNER JOIN

{: .note}

> Cette jointure ne retourne que les lignes correspondant aux données de la table de gauche et de la table de droite. Et utilisée pour combiner les données qui ont une correspondance entre les deux tableaux.

#### Syntaxe

```sql
SELECT * FROM nom_table1
INNER JOIN nom_table2
ON nom_table1.key = nom_table2.key ;
```

### LEFT JOIN

{: .note}

> Cette jointure retourne toutes les lignes de la table de gauche, ainsi que les lignes correspondant aux données de la table de droite. Les lignes de la table de gauche qui n'ont pas de correspondance dans la table de droite sont retournées avec des valeurs NULL pour les colonnes de la table de droite.

#### Syntaxe

```sql
SELECT * FROM nom_table1
LEFT JOIN nom_table2
ON nom_table1.key = nom_table2.key ;
```

### RIGHT JOIN

{: .note}

> Cette jointure est similaire à la jointure gauche, sauf qu'elle retourne toutes les lignes de la tables de droite ainsi que les lignes correspondant aux données de la table de gauche.

#### Syntaxe

```sql
SELECT * FROM nom_table1
RIGHT JOIN nom_table2
ON nom_table1.key = nom_table2.key ;
```

## Les jointures internes
