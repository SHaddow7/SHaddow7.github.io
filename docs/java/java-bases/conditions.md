---
layout: default
title: Les conditions
nav_order: 1
parent: Les bases
grand_parent: Java
has_toc: false
---

## Les opérateurs

#### Les opérateurs de comparaison

| Opérateurs |                   Exemples                   | Descriptions        |
| :--------: | :------------------------------------------: | :------------------ |
|     <      | <span style='font-size:18px'>`a < b`</span>  | Inférieur à         |
|     <=     | <span style='font-size:18px'>`a <= b`</span> | Inférieur ou égal à |
|     >      | <span style='font-size:18px'>`a > b`</span>  | Supérieur à         |
|     >=     | <span style='font-size:18px'>`a >= b`</span> | Supérieur ou égal à |
|     ==     | <span style='font-size:18px'>`a == b`</span> | Egal à              |
|     !=     | <span style='font-size:18px'>`a != b`</span> | Différent de        |

#### Les opérateurs logiques

| Opérateurs |                            Exemples                            | Descriptions  |
| :--------: | :------------------------------------------------------------: | :-----------: |
|     &&     |    <span style='font-size:18px'>`(a == b && c == d)`</span>    | opérateur ET  |
|    \|\|    | <span style='font-size:18px'>`(a == b)` \|\| `(c == d)`</span> | opérateur OU  |
|     !      |        <span style='font-size:18px'>`(! c == d)`</span>        | opérateur NOT |

## Syntaxes - if, if … else, etc

```java
if( condition ) {
    // Traitement
}
else {
    // Traitement, cas échéant
}
```

## Syntaxes - Switch

```java
switch(...) {
    case ... :
        // Traitement
        break;
    break;
    case ... :
        // Traitement
    break;
    default :
        // Traitement, cas échéant
}
```
