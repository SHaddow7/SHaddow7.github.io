---
layout: default
title: Fragmentation
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
---

# Fragmentation

## Principes

---

La fragmentation permet de passer outre les limites physique en décomposant un paquet de données trop grand pour le transmission sur le réseau en plusieurs paquets plus petits, qui peuvent être transmis et reconstruits à la destination. Chaque fragment contient deux informations dans l'en-tête, **son emplacement dans le paquet** (Déplacement - Fragement Offset) et s'avoir **s'il est le dernier fragment** (MF - More Fragment).

### Exemples de fragmentation

#### Paquet d’origine :

| Identification | Longueur | DF  | MF  | Fragment Offset |
| :------------: | :------: | :-: | :-: | :-------------: |
|      354       |   5140   |  0  |  0  |        0        |

#### Fragment

| Identification | Longueur | DF  | MF  | Fragment Offset |
| :------------: | :------: | :-: | :-: | :-------------: |
|      345       |   1500   |  0  |  1  |        0        |
|      345       |   1500   |  0  |  1  |       185       |
|      345       |   1500   |  0  |  1  |       370       |
|      345       |   700    |  0  |  0  |       555       |
