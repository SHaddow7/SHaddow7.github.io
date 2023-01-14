---
layout: default
title: Les expressions régulières
---

## Les ancres

| Caractère | Description        | Exemple  | Que fait l’expression                                       |
| :-------: | ------------------ | :------: | ----------------------------------------------------------- |
|     ^     | Début de la chaîne | `^[0-9]` | Affiche uniquement les chaînes qui commence par un nombre   |
|     $     | Fin de la chaîne   | `[0-9]$` | Affiche uniquement les chaînes qui se termine par un nombre |

## Les caractères commun

| Caractère | Description              |  Exemple  | Que fait l’expression                                                    |
| :-------: | ------------------------ | :-------: | ------------------------------------------------------------------------ |
|     .     | n'importe quel caractère | `[0-9].`  | Affiche uniquement les chaines avec un chiffre + un caractère quelconque |
|    \*     | Une fois ou n fois       | `[0-9]\*` | Affiche uniquement les chaines avec un ou n chiffre                      |
|     +     | 1 fois au moins          | `[0-9]+`  | Affiche uniquement les chaines avec au moins un chiffre                  |
|     ?     | 0 ou 1 fois              | `[0-9]?`  | Affiche uniquement les chaines avec un ou zéro chiffre                   |

## Les caractères de classe

|   Caractère    |     Equivalent      | Description                                                         |
| :------------: | :-----------------: | ------------------------------------------------------------------- |
|     [abc]      |          X          | Correspond uniquement au caractère a, b ou c.                       |
|    [\^abc]     |          X          | Correspond à tous les caractères sauf les caractères a, b et c.     |
|     [a-z]      |          X          | Correspond à tous les caractères entre a-z .                        |
|     [0-9]      |          X          | Correspond à tous les caractères entre 0-9.                         |
|    [a-zA-Z]    |          X          | Correspond à tous les caractères entre a-z ou A-Z.                  |
| [\[:alnum:]\]  |     [A-Za-z0-9]     | Correspond à n'importe quelle lettre ou chiffre.                    |
| [\[:alpha:]\]  |      [A-Za-z]       | Correspond aux lettres de l'alphabet.                               |
| [\[:ascii:]\]  |     [\x00-\x7F]     | Correspond à n'importe quel caractère de la plage ASCII valide.     |
| [\[:blank:]\]  |        [ \t]        | Correspond aux espaces et aux tabulations .                         |
| [\[:digit:]\]  |     \d ou [0-9]     | Correspond aux chiffres décimaux.                                   |
| [\[:lower:]\]  |        [a-z]        | Correspond aux lettres minuscules.                                  |
| [\[:space:]\]  |         \\s         | Correspond aux caractères d'espacement.                             |
| [\[:upper:]\]  |        [A-Z]        | Correspond aux lettres majuscules.                                  |
|  [\[:word:]\]  | \\w ou [a-zA-Z0-9_] | Correspond aux lettres, aux chiffres et aux traits de soulignement. |
| [\[:xdigit:]\] |     [0-9a-fA-F]     | Correspond aux chiffres hexadécimaux, insensible à la casse.        |

## Les quantificateurs

| Caractère | Description                                     |  Exemple  | Que fait l’expression                                 |
| :-------: | ----------------------------------------------- | :-------: | ----------------------------------------------------- |
|    {n}    | Correspond à n caractères consécutifs.          |  ` a{3}`  | Correspond exactement à 3 caractères "a" consécutifs. |
|   {n, }   | Correspond à au moins n caractères consécutifs. | `a{3,} `  | Correspond à au moins 3 caractères “a” consécutifs.   |
|  {a, b}   | Correspond entre a et b caractères consécutifs. | `a{3,6} ` | Correspond entre 3 et 6 caractères "a" consécutifs.   |

## Exemples d'expressions régulières

#### Les formats récurrents

```bash
# Format - 00000 à 99999
code_postale="^[0-9]{5}$"
# Format - [ 01 à 95 ] et les dom, cp des département
code_postale_departement="^(0[1-9]|2[a-bA-B\d]|97[12346]|[13-8]\d|9[0-5])$"
```

```bash
# Format - 1 : sans espaces entre chaque nombre
numero_insee="^[12]\d{2}(0\d|1[12])\d{2}\d{3}\d{3}\s?\d{2}$"
# Format - 2 : avec espaces entre chaque nombre
numero_insee2="^[12]\s?\d{2}\s?(0\d|1[12])\s?\d{2}\s?\d{3}\s?\d{3}\s?\d{2}$"
```

```bash
# Format - sans indicateur 06 52 65 52 25
numero_tel_fr="^(?:\d{2}[.\-\s]+){4}\d{2}$"
# Format - avec indicateur 06 52 65 52 25
numero_tel_fr_ind="^\(?\+?\d{3}\)?\s?(?:\d{2}[.\-\s]?){3}\d{2}$"
```

```bash
# Format - a verifier / modifier / reduire
numero_iban="[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}"
# Format - 4556 4859 4851 4845
numero_carte_bancaire="^(?:\d{4}\s?){3}\d{4}$"
```

#### Format Entiers / Chaîne

```bash
# Format - 0x.. ou #..
hexadecimal="^(#|0x)?([\da-fA-F]+)$"
# Format - Match uniquement tous les nombres
nombre="^\d+$"
# Format - nombre romain
nombre_romain="^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$"
# Format - (de -1 à - infini)
entier_negatif="^[-][1-9]\d*$"
# Format - (de 1 à  + infini)
entier_positif="^[+][1-9]\d*$"
# Format - x.x ou x,x
decimale_s_signe="^(0|[1-9]\d*|)(?:[.,][1-9]\d*|[.,]0+[1-9]+)?$"
# Format - (-x.x ou +x,x)
decimale_a_signe="^([+-]?)(?:0|[1-9]\d*|)(?:[.,][1-9]\d*|[.,]0\d+)?$"
# Format - (ex : kayak)
palindrome="^((.)(?1)\2|.?)$"
```

#### Formats pour les dates / heures

```bash
# Format - 27/12/1999 ou 27.12.1999
date_JJ_MM_YYYY="^(0[1-9]|1\d|2\d|3[01])[.//](0[1-9]|1[012])[.//](2\d{3})$"
# Format - lundi 12 janvier 1999
date_JJJJ_MMMM_YYYY="^[a-zA-z]*\s(0[1-9]|1[012])\s[a-z]*\s[12]\d{3}$"
# Format - 27/12/1999 ou 27.12.1999 10:20
date_JJ_MM_YYYY_hh_mm="^(0[1-9]|1\d|2\d|3[01])[.](0[1-9]|1[012])[.](2\d{3})\s?(0\d|\d|1\d|2[0-4]):(0\d|[1-5]\d)$"
# Format - 27/12/1999 ou 27.12.1999 10:20:22
date_JJ_MM_YYYY_hh_mm_ss="^(0[1-9]|1\d|2\d|3[01]|31)[-//](0[1-9]|1[0-2])[-//]([12]\d{3})\s(0\d|\d|1\d|2[1-4])[:/-//](0\d|\d{2})[:/-//](0\d|\d{2})$"
```

```bash
# Format - 10:15 ou 10-15
time_hh_mm="^(0\d|\d|1\d|2[0-4])[:-](0\d|[1-5]\d)$"
# Format - 10:15:22 ou 10-15-22
time_hh_mm_ss="^(0\d|\d|1\d|2[1-4])[:-](0\d|[1-5]\d)[:-](0\d|[1-5]\d)$"
```

#### Formats Systèmes / Réseaux

```bash
# Format - 000.000.000.000 à 255.255.255.255 (simple)
adresse_ipv4="^(25[0-5]|2[0-4]\d|[01]?\d{2}?)[.](25[0-5]|2[0-4]\d|[01]?\d{2}?)[.](25[0-5]|2[0-4]\d|[01]?\d{2}?)[.](25[0-5]|2[0-4]\d|[01]?\d{2}?)$"
# Format - 2001:db8:0:85a3:0:0:ac1f:8001
adresse_ipv6="^(?:[a-zA-Z\d]{0,4}:?){1,8}|(?:[a-zA-Z\d]{0,4}:?){1,4}(?:\d{1,3}\.){3}\d{1,3}$"
# Format - 00:00:00:00:00:00 à FF:FF:FF:FF:FF:FF
adresse_mac="^([\dA-Fa-f]{2}[:\-.]?){5}([\dA-Fa-f]{2})$"
# Format - 00000 à 65535
port="^((6553[0-5])|(655[0-2]\d)|(65[0-4]\d{2})|(6[0-4]\d{3})|([1-5]\d{4})|([0-5]{0,5})|(\d{1,4}))$"
```
