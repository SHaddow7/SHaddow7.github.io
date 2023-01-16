---
layout: default
title: Les vues
parent: LMD
grand_parent: Postgresql
has_children: true
nav_order: 1
has_toc: false
---

## Les vues

### Créer une vue

```sql
CREATE [ OR REPLACE ]
VIEW nom [ ( nom_colonne [, ...] ) ]
AS requête
;
```

## Utiliser une vue

```sql
SELECT client_id, nb_cmdes, derniere_cmde
FROM v_commande ;
```

```sql
DROP VIEW v_commande ;
```

##

```sql

```

##

```sql

```

##

```sql

```
