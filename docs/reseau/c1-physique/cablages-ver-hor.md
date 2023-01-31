---
layout: default
title: Câblage
parent: 1 - Liaison Physique
grand_parent: Réseaux
---

# Les cablages

## Câblages verticaux, horizontaux

---

{: .note}

Les câblages verticaux et horizontaux font référence à l’emplacement géographique des câbles dans un bâtiment ou un immeuble.

### Câblage vertical - Local Technique d'Immeuble (LTI)

{:.mt-4}
Les LTI sont utilisés pour relier les différents étages d'un bâtiment entre eux. Il se compose généralement d'un **câble principal** qui relie le rez-de-chaussée à l'étage supérieur, et **de câbles secondaires** qui relient les différents locaux à ce câble principal.

### Câblage horizontal - Local Technique d'Étage (LTE)

{:.mt-4}
Et les LTE sont utilisés pour relier les différents locaux d'un étage d'un bâtiment entre eux. Il se compose généralement d'un câble principal qui relie le local de commutation (généralement une salle de serveur) aux différents postes de travail et aux équipements réseau.

## Coeur de réseau

---

Le coeur de réseau est la partie d'un réseau qui gère les principales fonctions de transport de données. Il s'agit généralement de l'endroit où les données sont acheminées à travers le réseau pour atteindre leur destination finale. Il est souvent situé au centre du réseau et est généralement constitué d'équipements de commutation et de routage de haut niveau, tels que les **commutateurs** et les **routeurs**.

## Brassage

---

Le brassage est un processus permettant d'interconnecter des réseaux informatiques ou des lignes de transmission de différents types, généralement à l'aide d'un équipement dédié appelé commutateur de brassage. Il permet de connecter plusieurs réseaux ou lignes entre eux, pour permettre la communication entre eux.

Les réseaux locaux (LAN) et les réseaux étendus (WAN) sont souvent reliés entre eux à l'aide d'un commutateur de brassage, qui permet de connecter des réseaux locaux entre eux, ou de connecter un réseau local à un réseau étendu. Il permet également de connecter des réseaux de différents types, tels que des réseaux Ethernet et des réseaux ATM.

Les commutateurs de brassage sont souvent utilisés pour connecter des réseaux locaux à des réseaux étendus. Ils peuvent également être utilisés pour connecter des réseaux locaux entre eux, ou pour connecter des réseaux de différents types entre eux. Les commutateurs de brassage sont généralement équipés de plusieurs ports, chacun pouvant être connecté à un réseau ou à une ligne de transmission différente.

Il est à noter que le brassage est souvent utilisé comme une technique de connectivité pour les réseaux de petite et moyenne taille, mais pour les grandes entreprises, les équipements de commutation de niveau 3 (commutateur L3) sont utilisés pour connecter les différents VLANs entre eux et permettre un routage inter-VLAN.

## Le câblage cuivre

---

```plaintext
# Type de câble    -    F/UTP
F  /  U  TP
┬     ┬    ┬
│     │    │
│     │    └──────  Paire torsadée (Twisted Pair)
│     └───────────  Protection de chaque paire
│                      ● Aucune    (Unshielded)
│                      ● Feuillard (Foil shielded)
└─────────────────  Protection du câble
                        ● Aucune             (Unshielded)
                        ● Feuillard          (Foil shielded)
                        ● Tresse             (braided Shielded)
                        ● Tresse + Feuillard (SF)
```

## Connecteurs RJ45

---

| Type de raccordement | Plots    |
| :------------------- | :------- |
| 10BaseT              | 1-2, 3-6 |
| 100BaseTX            | 1-2, 3-6 |
| 1000BaseT            | tous     |

## Catégorie de câble

---

| Classe | Catégorie | Bande passante | Débit maximum          | Distance maximum |
| ------ | --------- | -------------- | ---------------------- | ---------------- |
| D      | 5         | 100 MHz        | 100 Mbits/s (100BaseT) | 100m             |
| D      | 5e        | 100 MHz        | 1 Gbits/s (1000BaseT)  | 100m             |
| E      | 6         | 250 MHz        | 1 Gbits/s (1GBaseT)    | 100m             |
| Ea     | 6a        | 500 MHz        | 10 Gbits/s (10GBaseT)  | 100m             |
| F et + | 7 et +    | 600 MHz        |                        |                  |
