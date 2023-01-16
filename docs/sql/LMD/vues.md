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

{: .note}

> Définition - Une vue est une sorte de table virtuelle qui contient uniquement le résultat d'une requête SQL que l'on aura définit lors de la création de la vue.

#### Commande psql

| Commande | Description                      |
| :------: | :------------------------------- |
|   \dv    | Liste les vues du schéma courant |

#### **Syntaxe** - Création d'une vue

```sql
CREATE [ OR REPLACE ]
    VIEW nom [ ( nom_colonne [, ...] ) ]
    AS requête ;
```

#### **Syntaxe** - Suppression d'une vue

```sql
DROP VIEW v_commande ;
```

#### **Syntaxe** - Utilisation de la vue

```sql
SELECT client_id, nb_cmdes, derniere_cmde
FROM v_commande ;
```
