---
layout: default
title: Câblage cuivre
parent: 1 - Liaison Physique
grand_parent: Réseaux
nav_order: 3
---

# Le cablages cuivre

## Les catégories

---

| Classe | Catégorie | Bande passante | Débit maximum          | Distance maximum |
| ------ | --------- | :------------: | ---------------------- | :--------------: |
| D      | 5         |    100 MHz     | 100 Mbits/s (100BaseT) |       100m       |
| D      | 5e        |    100 MHz     | 1 Gbits/s (1000BaseT)  |       100m       |
| E      | 6         |    250 MHz     | 1 Gbits/s (1GBaseT)    |       100m       |
| Ea     | 6a        |    500 MHz     | 10 Gbits/s (10GBaseT)  |       100m       |
| F et + | 7 et +    |    600 MHz     | interdits              |    interdits     |

## Les types de protections

---

```plaintext
    F  /  U    TP
    ┬     ┬    ┬
    │     │    │
    │     │    └────── + Paire torsadée (Twisted Pair - TP)
    │     └─────────── + Protection de chaque paire
    │                      ● Aucune    (Unshielded - U)
    │                      ● Feuillard (Foil shielded - F)
    └───────────────── + Protection du câble
                            ● Aucune             (Unshielded - U)
                            ● Feuillard          (Foil shielded - F)
                            ● Tresse             (braided Shielded - S)
                            ● Tresse + Feuillard (SF)
```

## Les connectiques

---

| Type de raccordement | Plots    |
| :------------------- | :------- |
| 10BaseT              | 1-2, 3-6 |
| 100BaseTX            | 1-2, 3-6 |
| 1000BaseT            | tous     |
