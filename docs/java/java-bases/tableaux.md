---
layout: default
title: Les tableaux
parent: Les bases
grand_parent: Java
nav_order: 3
---

## Les tableaux

### Déclaration

```java
int tableau[] = new int[50];    //  Déclaration et allocation d'un tableau de taille de 50
int[] tableau[] = new int[50];  //  Equivalent de la précédente déclaration, svt privilégié
int tab[];                      //  déclaration
tab[] = new int[50];            //  Affectation
```

### Affectation

```java
int tableau[] = {1, 2, 3, 4}  //  Affectation globale à l'initialisation
int tab[] = new int[5] ;
int tab[0] = 12 ;            //  Affectation poste pat poste
int tab[1] = 13 ;
```

### Copie et parcours d'un tableau

```java
int tableau[] = {1, 2, 3, 4}
for ( int i = 0; i < tableau.length; i++ ) {
   LOG.info(tableau[i]);
}
```

```java
int tableau[] = {1, 2, 3, 4}
for ( int valeur : tableau ) {
   LOG.info(valeur);
}
```
