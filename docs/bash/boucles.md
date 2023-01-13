---
layout: default
title: Les boucles
parent: Bash
nav_order: 3
---

## Les structures itératives - while, until et for

> **Opération sur les boucles :** continue : on passe à la prochaine itération de la boucle break : sortie de boucle exit : sortie du script !

### Les boucles While et until

```bash
#!/bin/bash

# La boucle while : faire tant que la condition est vraie
while condition do
    commande(s)
done

# La boucle until : faire jusqu'à ce que la condition soit vraie
until condition do
    commande(s)
done
```

```bash
#!/bin/bash
# Exemple
x=0
while [ $x -lt 10 ] do
    echo "Hello"
    x=$((x+1))
done
```

### Les boucles for

```bash
#!/bin/bash

# Boucles for
# Forme 1 :
for variable in valeur1 valeur2 ... do
    commande(s)
done

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

# Forme 4 :
for ((i=0; i<9; i++)) do
    commande(s)
done
```
