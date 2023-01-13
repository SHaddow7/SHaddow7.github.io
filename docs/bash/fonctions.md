---
layout: default
title: Les fonctions
parent: Bash
nav_order: 4
---

## Les fonctions

### _Définition des fonctions_

```bash
#!/bin/bash
# Definitions des fonctions

# Forme 1 : cette version est un bug pour les autres shell
maFontion() {
    echo "hello $1"
}

# Forme 2
function maFontion {
    echo "hello $1"
}
```

### _Retourner des valeurs_

```bash
#!/bin/bash
# Retourner des valeurs
function maFontion {
    local myresult='some value'
    echo "$myresult"
}
result=$(maFontion)
```
