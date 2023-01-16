---
layout: default
title: Les transactions
parent: LMD
grand_parent: Postgresql
has_children: true
nav_order: 2
has_toc: false
---

## Les transaction

{: .note}

> Définition - il s'agit d'un ensemble d'une ou plusieurs requêtes SQL regroupées au sein d'un bloc qui est exécuté sur un jeu de données.
> Le début d'une transaction est marqué par le mot clef **BEGIN** et la fin, en fonction de ce qu'on souhaite faire, par le mot clef **ROLLBACK** ou **COMMIT**.

### Validation de transaction

```sql
--  PostgreSQL est, par défaut, en auto-commit
--  Validation automatique après chaque ordre de mise à jour
```

```sql
-- Principe du Begin / Commit / Rollback
BEGIN      --  initie un bloc de transaction
COMMIT     --  valide un ensemble d'ordres ( INSERT, UPDATE et DELETE )
ROLLBACK   --  « Retour arrière » au dernier COMMIT
```

### Exemple - Scénario type

```sql
-- Exemple d'une transaction bancaire
[ START TRANSACTION | BEGIN ] ;
-- débit d'un compte
UPDATE ... ;
-- crédit d'un compte
UPDATE ... ;
[ COMMIT | ROLLBACK ] ;
```
