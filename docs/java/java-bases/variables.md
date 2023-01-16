---
layout: default
title: Les variables
nav_order: 1
parent: Les bases
grand_parent: Java
has_toc: false
---

## Les variables

### Les types de primitives

| Types   | Taille (bits) | Valeurs       |
| :------ | :-----------: | :------------ |
| byte    |       1       | -128 à 127    |
| short   |      16       | -32K à 32K    |
| int     |      32       | -2B à 2B      |
| long    |      64       |               |
| float   |      32       |               |
| double  |      64       |               |
| char    |      16       | A, B, C, ...  |
| boolean |       1       | true ou false |

### Déclaration des variables

```java
int num = 5;
float floatNum = 5.99f;
char letter = 'D';
boolean bool = true;
String chaine = "Ceci est une chaîne";
```

### Les opérateurs

#### Opérateurs d'affectations

| Opérateurs | Equivalents      |                   Exemples                    |
| :--------: | ---------------- | :-------------------------------------------: |
|     =      | a = valeur       |  <span style='font-size:18px'>`a = 3`</span>  |
|     +=     | a = a + valeur   | <span style='font-size:18px'>`a += 3`</span>  |
|     -=     | a = a - valeur   | <span style='font-size:18px'>`a -= 3`</span>  |
|    \*=     | a = a \* valeur  | <span style='font-size:18px'>`a *= 3`</span>  |
|   \*\*=    | a = a\*\* valeur | <span style='font-size:18px'>`a **= 3`</span> |
|     /=     | a = a / valeur   | <span style='font-size:18px'>`a /= 3`</span>  |
|     %=     | a = a % valeur   | <span style='font-size:18px'>`a %= 3`</span>  |
