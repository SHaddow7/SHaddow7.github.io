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

|                   |
| :---------------: |
|      ( ) ; !      |
| \*\* ; \* ; / ; % |
|       + ; -       |
|  < ; <= ; > ; >=  |
|      == ; !=      |

| Opérateurs | Equivalent | Descriptions |
| :--------: | :--------: | :----------: |
|     &&     |     -a     | opérateur ET |
|    \|\|    |     -o     | opérateur OU |

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
