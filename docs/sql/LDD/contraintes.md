---
layout: default
title: Les contraintes
parent: LDD
grand_parent: Postgresql
has_children: true
nav_order: 2
has_toc: false
---

## Les contraintes

### Contrainte de type Clé Primaire

```sql
CONSTRAINT pk_nom_pk PRIMARY KEY (nom_colonne)
```

### Contrainte de type Clé Étrangère

```sql
CONSTRAINT fk_nom_fk FOREIGN KEY (nom_colonne)
    REFERENCES nom_table (nom_colonne)
```

### Contrainte de type CHECK

```sql
--  Permet de vérifier une valeur avant ajout dans la table
--  La vérification peut porter sur plusieurs colonnes
CONSTRAINT verif_mail CHECK (email LIKE ('%@%'))
```

### Contrainte de type UNIQUE

```sql
--  Garantie l'unicité des valeurs de la colonne
nom varchar(30) UNIQUE
```

### Contrainte de type NOT NULL

```sql
--  Garantie que la colonne sera valorisée
num_compte numeric(10) NOT NULL
```

### Contrainte de type DEFAULT

```sql
--  Permet d'assigner une valeur par défaut
date_inscrit date DEFAULT now()
```

#### Exemple

```sql
CREATE TABLE client (
    client_id int NOT NULL,
    codepostal char(5),
    nom varchar(30) NOT NULL,
    prenom varchar(30) NOT NULL,
    date_inscrit date NOT NULL,
    adresse varchar(30),
    CONSTRAINT pk_client PRIMARY KEY (client_id),
    CONSTRAINT fk_client_ville
    FOREIGN KEY (codepostal)
    REFERENCES ville (codepostal)
) ;
```

## Ajouter des contraintes

```sql
ALTER TABLE client ADD
    CONSTRAINT pk_cli PRIMARY KEY (num);
```

```sql
ALTER TABLE client ADD
    CONSTRAINT uk_cli_tel UNIQUE (tel);
```

```sql
ALTER TABLE client ADD
    CONSTRAINT fk_cli_dep FOREIGN KEY (dept)
        REFERENCES departement(id);
```

```sql
ALTER TABLE film ADD
    CONSTRAINT ck_fil_cat CHECK (categorie BETWEEN 10 AND 100);
```

## Modifier des colonnes

````sql
ALTER TABLE nom_table ADD [COLUMN] colonne type ;
```sql
````

ALTER TABLE nom_table ALTER [COLUMN] colonne SET … ;

````
```sql
ALTER TABLE nom_table DROP [COLUMN] colonne ;
````

#### Exemple

```sql
ALTER TABLE client ALTER COLUMN tel SET NOT NULL ;
ALTER TABLE client ALTER COLUMN date_inscrit SET DEFAULT current_date;
```

## Supprimer des contraintes

```sql
ALTER TABLE nom_table
DROP CONSTRAINT nom_contrainte ;
```

## Supprimer des tables

```sql
DROP TABLE nom_table ;
DROP TABLE nom_table CASCADE ;
```

## Créer une table à partir d’une requête

```sql
CREATE TABLE clients_parisiens
( numero, nom, mail, tel )
AS
SELECT client_id, nom, email, telephone
FROM client
WHERE substr(codepostal,1,2) = '75' ;
```

## Séquence - Création

```sql
--  valeur_incrément : 1 par défaut
--  valeur_min : 1 par défaut
CREATE SEQUENCE nom_séquence
[ INCREMENT [ BY ] valeur_incrément ]
[ MINVALUE valeur_min | NO MINVALUE ]
[ MAXVALUE valeur_max | NO MAXVALUE ]
[ START [ WITH ] valeur_début ]
;
```

#### Exemples

```sql
--  Créer une séquence baptisée client_id_seq
CREATE SEQUENCE client_id_seq ;
--  Utiliser une séquence baptisée client_id_seq
SELECT nextval( 'client_id_seq' ) ;
--  Supprimer la séquence baptisée client_id_seq
DROP SEQUENCE client_id_seq ;
```
