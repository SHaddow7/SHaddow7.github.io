---
layout: default
title: Les classes
parent: Les bases
grand_parent: Java
nav_order: 3
---

# Les classes

{: .note}

> Pour exécuter une classe Java, il est obligatoire d'avoir la Méthode **main**.

{: .note}

> Java est langage orienté objet : tout est objet sauf les variables de types primitives

## Définition d'une classe

{: .note}

> Une classe comporte : sa déclaration, des variables et les définitions de ses méthodes

### Syntaxe

{: .warning}

> **Attention**, il faut 1 seule classe par fichier .java

```java
public class NomClasse {
    //  Attributs en 1er - Exigence : en camelCase
    visibilité type nomAttribut;
    //  Déclaration de méthodes
    visibilité typeRetour nomMéthodeSansArgument() {
        //  Traitement
    }
    visibilité typeRetour nomMéthodeAvecArgument(typeArg arg) {
        //  Traitement
    }
}
```

### Exemple

```java
public class Voiture {
    //  Attributs
    private int vitesse = 100;
    private String nom = 100;
    private String marque;
    //  Déclaration de méthodes
    public void limiter(int vitLimite) {
        vitesse = vitLimite;
    }
}
```

## Le Constructeur

{: .note}

> La défintion d'un constructeur est facultatif
> Si aucun constructeur n'est explicitement défini dans la classe, le compilateur va créer un **contructeur par défaut sans argument**.
> Le constructeur pour le même nom que la classe et ne renvoie rien

### Exemple

```java
public class Voiture {
    //  Attributs
    private String couleur;
    //  Déclaration de méthodes
    public Voiture() {
        couleur = "bleu";
    }
}
```
