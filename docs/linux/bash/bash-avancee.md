---
layout: default
title: Bash avancees
parent: Bash
grand_parent: Linux
has_toc: false
nav_order: 6
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

### Opérateurs acceptés (ordre croissant de priorité) :

| Opérateurs | Descriptions   |                       Exemples                       |
| :--------: | -------------- | :--------------------------------------------------: |
|    ( )     | Groupement     |   <span style='font-size:18px'>`$(( ... ))`</span>   |
|     !      | Pas            | <span style='font-size:18px'>`[[ ! a == 1 ]]`</span> |
|    \*\*    | Puissance      |  <span style='font-size:18px'>`$(( a**10 ))`</span>  |
|     /      | Division       | <span style='font-size:18px'>`$(( a / 200 ))`</span> |
|     %      | Modulo         | <span style='font-size:18px'>`$(( a % 200 ))`</span> |
|     +      | Addition       | <span style='font-size:18px'>`$(( a + 200 ))`</span> |
|     -      | Soustraction   | <span style='font-size:18px'>`$(( a - 200 ))`</span> |
|     \*     | Multiplication | <span style='font-size:18px'>`$(( a * 200 ))`</span> |

| Opérateurs | Equivalents      |                   Exemples                    |
| :--------: | ---------------- | :-------------------------------------------: |
|    a+=     | a = a + valeur   | <span style='font-size:18px'>`a += 3`</span>  |
|    a-=     | a = a - valeur   | <span style='font-size:18px'>`a -= 3`</span>  |
|    a\*=    | a = a \* valeur  | <span style='font-size:18px'>`a *= 3`</span>  |
|   a\*\*=   | a = a\*\* valeur | <span style='font-size:18px'>`a **= 3`</span> |
|    a/=     | a = a / valeur   | <span style='font-size:18px'>`a /= 3`</span>  |
|    a%=     | a = a % valeur   | <span style='font-size:18px'>`a %= 3`</span>  |
|    i++     | i = i + 1        |   <span style='font-size:18px'>`i++`</span>   |
|    i--     | i = i - 1        |   <span style='font-size:18px'>`i--`</span>   |

| Opérateurs |    Descriptions     |                      Exemples                      |
| :--------: | :-----------------: | :------------------------------------------------: |
|     <      |     Inférieur à     | <span style='font-size:18px'>`(( a < b ))`</span>  |
|     <=     | Inférieur ou égal à | <span style='font-size:18px'>`(( a <= b ))`</span> |
|     >      |     Supérieur à     | <span style='font-size:18px'>`(( a > b ))`</span>  |
|     >=     | Supérieur ou égal à | <span style='font-size:18px'>`(( a >= b ))`</span> |
|     ==     |       Egal à        | <span style='font-size:18px'>`(( a == b ))`</span> |
|     !=     |    Différent de     | <span style='font-size:18px'>`(( a != b ))`</span> |

| Opérateurs | Descriptions |                                 Exemples                                  |
| :--------: | :----------: | :-----------------------------------------------------------------------: |
|     &&     | opérateur ET |   <span style='font-size:18px'>`[[ a -le b ]] && [[ a -le 10 ]]`</span>   |
|    \|\|    | opérateur OU | <span style='font-size:18px'>`[[ a -le b ]]` \|\| `[[ a -le 10 ]]`</span> |
|     -a     | opérateur ET |   <span style='font-size:18px'>`[[ a -le b ]] -a [[ a -le 10 ]]`</span>   |
|     -o     | opérateur ET |   <span style='font-size:18px'>`[[ a -le b ]] -o [[ a -le 10 ]]`</span>   |
