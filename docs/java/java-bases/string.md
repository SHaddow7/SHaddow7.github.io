---
layout: default
title: L'API String
parent: Les bases
grand_parent: Java
nav_order: 3
---

## La classe String

###

### Quelques méthodes de String - Creer un tableau qui liste quelques methodes de l'api string

String first = "John";
String last = "Doe";
String name = first + " " + last;
System.out.println(name);

```java
// Exemples                           Résultats
String chaine = "Bonjour";         // Affectation
//  Méthode pour concaténer
chaine.concat(" tout le monde");   // "Bonjour tout le monde"
chaine.length();                   // renvoie 7 (longueur de la chaîne)
chaine.equals("Bonjour");          // renvoie true
chaine.compareTo("Bonjour");       // renvoie 0 - A privilégier
```
