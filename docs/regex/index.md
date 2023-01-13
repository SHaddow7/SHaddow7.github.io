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
