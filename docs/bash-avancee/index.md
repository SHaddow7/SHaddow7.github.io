---
layout: default
title: Bash avancees
#nav_order: 1
has_toc: false
---

## Bash avancée

### Evaluation arithmétique

```bash
# Affectation de l'évaluation numérique
let expression
#  ou
(( expression ))
```

#### Exemple

```bash
(( res=$nb2 op $nb3))
echo $res
```

#### Opérateurs acceptés (ordre croissant de priorité) :

| Opérateurs | Descriptions   |
| :--------: | -------------- |
|    ( )     | Groupement     |
|     !      | Pas            |
|    \*\*    | Puissance      |
|     /      | Division       |
|     %      | Modulo         |
|     +      | Addition       |
|     -      | Soustraction   |
|     \*     | Multiplication |

| Opérateurs | Equivalents     |
| :--------: | --------------- |
|    a+=     | a = a + valeur  |
|    a-=     | a = a - valeur  |
|    a\*=    | a = a \* valeur |
|    a/=     | a = a / valeur  |
|    a%=     | a = a % valeur  |
|    i++     | i = i + 1       |
|    i--     | i = i - 1       |

| Opérateurs | Equivalent |    Descriptions     |
| :--------: | :--------: | :-----------------: |
|     <      |            |     Inférieur à     |
|     <=     |            | Inférieur ou égal à |
|     >      |            |     Supérieur à     |
|     >=     |            | Supérieur ou égal à |
|     ==     |            |       Egal à        |
|     !=     |            |    Différent de     |
|     &&     |     -a     |    opérateur ET     |
|    \|\|    |     -o     |    opérateur OU     |

#### Exemple

```bash
read var
if (( $var > 15 && $var <= 20 )) then
    echo "Tres Bien"
fi
```

### Manipulation de l'évaluation numérique

```bash
# Syntaxe
$(( expression ))
```

#### Exemple

```bash
echo $(($nb2 op $nb3))
echo $(($nb2 + $nb3))
echo $(($nb2 - $nb3))
echo $(($nb2 / $nb3))
```

### Les fonctions

```bash
# Forme 1 : cette version est un bug pour les autres shell
maFontion() {
    echo "hello $1"
}
```

```bash
# Forme 2 :
function maFontion {
    echo "hello $1"
}
```
