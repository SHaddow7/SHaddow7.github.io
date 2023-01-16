---
layout: default
title: Fonctions de groupe
parent: LID
grand_parent: Postgresql
---

## Agissent sur un ensemble de lignes

#### Syntaxe

```sql
SELECT [ ALL | DISTINCT ]
* | expression [ [ AS ] alias ] [, ...]
[ FROM nom_table ]
[ WHERE condition ]
[ GROUP BY expression [, ...] ]
[ HAVING condition ]
[ ORDER BY expression [ ASC | DESC ] [, …] ]
;
```

#### Les fonctions

| Fonctions  | Descriptions        |
| :--------: | :------------------ |
|  AVG(col)  | moyenne             |
| COUNT(\*)  | anombre             |
| COUNT(exp) | Pour sortir de psql |
|  MAX(exp)  | maximum             |
|  MIN(exp)  | minimum             |
|  SUM(exp)  | somme               |
