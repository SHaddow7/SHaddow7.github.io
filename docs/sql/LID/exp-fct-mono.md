---
layout: default
title: Exp. Fonctions mono-lignes
parent: LID
grand_parent: Postgresql
# nav_order: 5
---

## Expressions arithmétiques

### Principaux opérateurs

| Opérateurs | Equivalents    |
| :--------: | -------------- |
|     +      | addition       |
|     -      | soustraction   |
|     \*     | multiplication |
|     /      | division       |
|     %      | modulo         |
|     ^      | puissance      |
|    \|/     | racine carrée  |

## Fonction arithmétiques

| Fonction   | Description                         | Exemple               |
| ---------- | ----------------------------------- | --------------------- |
| abs(n)     | valeur absolue de n                 | abs(-15) → 15         |
| mod(n1,n2) | reste de la division de n1 par n2   | Mod(17,5) → 2         |
| round(n)   | arrondi n à l'entier le plus proche | round(8.65) → 9       |
| round(n,s) | arrondi n à s décimales             | round(5.243,2) → 5.24 |
| trunc(n)   | tronque n sur la partie entière     | trunc(10.6) → 10      |
| trunc(n,s) | Tronque n sur s décimales           | Trunc(10.62,1) → 10.6 |
| power(n,m) | éléve n à la puissance m            | Power(3,3) → 27       |
| --------   | -----------                         | -------               |
| --------   | -----------                         | -------               |
| --------   | -----------                         | -------               |
| --------   | -----------                         | -------               |

## Fonctions sur les chaînes de caractère

| Fonction       | Description                                            | Exemple                   |
| -------------- | ------------------------------------------------------ | ------------------------- |
| lower(ch)      | mise en minuscule                                      | lower(ch) → martin        |
| upper(ch)      | mise en majuscule                                      | upper(ch) → MARTIN        |
| initcap(ch)    | 1ère lettre en majuscule, la suite en minuscule        | Initcap(ch) → Martin      |
| substr(ch,p,l) | extrait à partir de la position p sur une longueur l.  | substr(ch,1,2) → ma       |
| substr(ch,p)   | extrait à partir de la position p sur une longueur l.  | substr(ch,4) → tin        |
| length(ch)     | retourne la longueur                                   | length(ch) → 6            |
| lpad(ch,n,'c') | complète à gauche sur n caractères avec le caractère c | lpad(ch,8,'+') → ++martin |
| lpad(ch,n)     | complète avec des espaces                              |                           |
| rpad(ch,n,'c') | fonctionne comme lpad mais la                          | rpad(ch,8,'+') → martin++ |
| rpad(ch,n)     | chaîne est complétée à droite                          |                           |

## Fonctions sur date/heure

| Fonction                   | Description                                                | Exemple                               |
| -------------------------- | ---------------------------------------------------------- | ------------------------------------- |
| current_date               | date courante                                              | 2019-06-27                            |
| current_time               | heure courante                                             | 21:30:15                              |
| current_timestamp ou now() | date et heure courante                                     | 2019-06-27 21:30:15                   |
| extract(unité FROM date)   | Extrait d’une date l’unité demandée : (DAY) (MONTH) (YEAR) | extract (HOUR FROM current_time) → 21 |

#### Exemple

```sql
SELECT
    extract(DAY FROM date_comm) AS JOUR,
    extract(MONTH FROM date_comm) AS MOIS,
    extract(YEAR FROM date_comm) AS ANNEE
FROM nom_table ;
```

## Conversion de type

#### Exemples

```sql
--  Afficher la date système en clair
SELECT to_char(now(),'tmday dd tmmonth yyyy') as "Date";

--  Afficher l'heure des commandes
SELECT to_char(date_comm,'hh24:mi:ss') as "Heure" FROM commande ;
```

## Traitement des valeurs NULL

#### Syntaxe

```sql
--  Traitement des valeur NULL
--  La fonction renvoie la valeur du premier paramètre qui n’est pas NULL
--  Si tous les paramètres sont NULL, alors le retour est NULL.
coalesce(param1, param2, param3, ...)
```
