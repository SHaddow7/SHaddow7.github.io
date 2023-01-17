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

| Types   | Tailles (bits) | Valeurs par défaut | Tailles             |
| :------ | :------------: | :----------------: | :------------------ |
| byte    |       1        |         0          | -128 à 127          |
| short   |       16       |         0          | -2^15 à 2^(15-1)    |
| int     |       32       |         0          | -2^(31) à 2^(31-1)  |
| long    |       64       |         0          | -2^(63) to 2^(63-1) |
| float   |       32       |        0.0f        | N/A                 |
| double  |       64       |        0.0d        | N/A                 |
| char    |       16       |    A, B, C, ...    | 65535               |
| boolean |       1        |        N/A         | true / false        |

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

### Le cast des types

```java

// Exemples        |      Résultats
int i = 10;
long l = i;               // 10
double d = 10.02;
long l = (long)d;         // 10

String.valueOf(10);       // "10"
Integer.parseInt("10");   // 10
Double.parseDouble("10"); // 10.0
```

### Entrée utilisateur

```java
Scanner saisieUtilisateur = new Scanner(System.in);
String chaine = saisieUtilisateur.nextLine();
System.out.println(chaine);

int num = saisieUtilisateur.nextInt();
System.out.println(num);
```
