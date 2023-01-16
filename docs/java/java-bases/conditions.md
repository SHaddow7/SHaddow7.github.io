---
layout: default
title: Les conditions
parent: Les bases
grand_parent: Java
nav_order: 2
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
if( boolean ) {
    // Traitement
}
else if ( boolean ) {
    // Traitement, cas échéant
}
else {
    // Traitement, cas échéant
}
```

## Syntaxes - Switch

```java
switch( expression ) {
    case constante1 :
        // Traitement
        break;
    break;
    case constante2 :
        // Traitement
    break;
    default :
        // Traitement, cas échéant
}
```
