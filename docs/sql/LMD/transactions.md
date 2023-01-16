---
layout: default
title: Les transactions
parent: LMD
grand_parent: Postgresql
has_children: true
nav_order: 2
has_toc: false
---

##

### Validation de transaction

```sql
PostgreSQL est, par défaut, en auto-commit

Validation automatique après chaque ordre de mise à jour

Principe du Commit / Rollback
•
COMMIT valide un ensemble d'ordres
INSERT, UPDATE et DELETE
•
ROLLBACK « Retour arrière » au dernier COMMIT
```

### Validation de transaction –– scénario type

```sql
[ START TRANSACTION | BEGIN ] ;
-- débit d'un compte
UPDATE ... ;
-- crédit d'un compte
UPDATE ... ;
[ COMMIT | ROLLBACK ] ;
```
