---
layout: default
title: Création de tables
parent: LDD
grand_parent: Postgresql
has_children: true
nav_order: 1
has_toc: false
---

## Création de tables

#### Syntaxe

```sql
CREATE TABLE nom_table (
    colonne1 type,
    colonne2 type NOT NULL,
    colonne3 type DEFAULT valeur,
    ...
);
```

#### Exemple

```sql
CREATE TABLE client (
    client_id int NOT NULL,
    codepostal char(5),
    nom varchar(30) NOT NULL,
    prenom varchar(30) NOT NULL,
    date_inscrit date NOT NULL,
    adresse varchar(30)
) ;
```

## Les types de données

### Le type entier

| Opérateurs                  | Descriptions                                          |
| :-------------------------- | :---------------------------------------------------- |
| integer                     | Le type numérique                                     |
| numeric(précision, échelle) | stocker des valeurs où l'exactitude est indispensable |
| decimal(précision, échelle) | type équivalent à numeric                             |
| serial                      | identificateur unique autoincrémenté                  |

### Le type caractère

| Opérateurs | Descriptions                                 |
| :--------- | :------------------------------------------- |
| char(n)    | longueur fixe (n), complétée par des espaces |
| varchar(n) | longueur variable avec limite (n)            |
| text       | longueur variable illimitée                  |

### Le type date / heure

| Opérateurs | Descriptions                             |
| :--------- | :--------------------------------------- |
| timestamp  | date et heure                            |
| date       | date seule                               |
| time       | heure seule                              |
| interval   | Intervalle de temps (contient une durée) |

{: .note}

> Existe aussi en fonction des besoins (voir documentation de Postgres -
> chapitre 8) : **smallint, bigint, real, double precision, smallserial,
> bigserial**
