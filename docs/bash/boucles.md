---
layout: default
title: Les boucles
parent: Bash
nav_order: 3
---

## Les structures itératives - while, until et for

{: .note }

> **Opération sur les boucles :**
>
> - On passe à la prochaine itération de la boucle : `continue`
> - Sortie de boucle : `break`
> - Sortie du script : `exit`

### Les boucles While et until

#### Syntaxes

```bash
# La boucle while : faire tant que la condition est vraie
while condition do
    commande(s)
done
```

```bash
# La boucle until : faire jusqu'à ce que la condition soit vraie
until condition do
    commande(s)
done
```

#### Exemples

```bash
#!/bin/bash
x=0
while [ $x -lt 10 ] do
    echo "Hello"
    x=$((x+1))
done
```

### Les boucles for

```bash
# Forme 1 :
for variable in valeur1 valeur2 ... do
    commande(s)
done
```

```bash
# Forme 2 : args passés au script
for variable in $@ do
    commande(s)
done
```

```bash
# Forme 3 : les fichiers du répertoire
for variable in /etc/* do
    commande(s)
done
```

```bash
# Forme 4 :
for ((i=0; i<9; i++)) do
    commande(s)
done
```
