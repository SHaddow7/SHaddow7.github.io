---
layout: default
title: Couche 1 - Liaison physique
nav_order: 3
parent: Couches basses
grand_parent: Réseaux
---

# Couche 1 - Liaison physique


## Liaisons physique
---

### Le câblage cuivre

```plaintext
# Type de câble    -    F/UTP
F    /    U    TP
┬         ┬    ┬ 
│         │    │
│         │    └──────  Paire torsadée (Twisted Pair)
│         └───────────  Protection de chaque paire
│                          ● Aucune    (Unshielded)
│                          ● Feuillard (Foil shielded)
└─────────────────────  Protection du câble
                           ● Aucune             (Unshielded)
                           ● Feuillard          (Foil shielded)
                           ● Tresse             (braided Shielded)
                           ● Tresse + Feuillard (SF)
```

### Connecteurs RJ45

| Type de raccordement    | Plots      |
| :---------------------- | :--------- |
| 10BaseT                 |  1-2, 3-6  |
| 100BaseTX               |  1-2, 3-6  |
| 1000BaseT               |  tous      |

## Masque réseau 
---

### A quoi sert un masque de réseau ?

A identifier la partie de l'adresse représentant le réseau. Ce masque est composé de32 bits: les bits représentant le réseau sont positionné à 1.

A identifier la partie adresse représentant des sous- réseaux (subnet, ou segmentlogique, ou segment IP) destinés à créer des structures logiques au niveau du réseaud'entreprise.

```plaintext
Exemple : mask = 255.255.0.0 pour un réseau de class B 155.1.54.0
┌─────┬─────┬─────┬─────┐
| 255 . 255 .  0  .  0  |
└─────┴─────┴─────┴─────┘
```

### Qu’est-ce qui différencie une adresse de classe A, B et C ?

#### Classe A

Si le premier bit est à 0, il s'agit d'une classe A (en décimal de 1.0.0.0 à 127.0.0.0)

#### Classe B

Si les 2 premiers bits sont à 1 0, il s'agit d'une classe B (en décimal de 128.0.0.0 à 191.0.0.0).

#### Classe C

Si les 3 premiers bits sont 1 1 0, il s'agit d'une classe C (en décimal de 192.0.0.0 à 254.0.0.0).

## Adresse Ethernet

Une adresse Ethernet, aussi appelé adresse `MAC (Media Access Control)` ou adresse physique, est un identifiant unique géré par un organisme international et associé à une carte réseau par son constructeur. Cette adresse permet d’identifier la carte réseau sur un réseau Ethernet.

```plaintext
Elle se compose de 8 octets en hexadécimal

┌────┬────┬────┬────┬────┬────┐
| 00 - 1B - 77 - B9 - 1F - AA |
└────┴────┴────┴────┴────┴────┘
```





Principes
• Définition du support de transmission et des connecteurs
• Cuivre
• Fibre optique
• Air (Wifi, Bluetooth, ...)

• Câblage vertical et horizontal
• LTI (Local Technique d'Immeuble)
• LTE (Local Technique d'Étage)
• Coeur de réseau
• Brassage
• Interférences
• Le câblage cuivre
• Connecteurs RJ45

## Catégorie de câble

| Classe | Catégorie | Bande passante | Débit maximum          | Distance maximum |
| ------ | --------- | -------------- | ---------------------- | ---------------- |
| D      | 5         | 100 MHz        | 100 Mbits/s (100BaseT) | 100m             |
| D      | 5e        | 100 MHz        | 1 Gbits/s (1000BaseT)  | 100m             |
| E      | 6         | 250 MHz        | 1 Gbits/s (1GBaseT)    | 100m             |
| Ea     | 6a        | 500 MHz        | 10 Gbits/s (10GBaseT)  | 100m             |
| F et + | 7 et +    | 600 MHz        | -------------          | ---------------- |

## La fibre optique

• Avantages :
• Insensibilité aux perturbations électromagnétiques
• Débits plus élevés sur de plus longues distances
• Niveau très fort de résistance au piratage physique
• Obligatoire, quand :
• La longueur du lien est supérieure à 90m.
• La rocade relie 2 bâtiments distincts.
Par rapport au cuivre, la fibre apporte plus d’évolutivité et de sécurité.
Il existe plusieurs types de fibre (monomode, multimodes, ...)

## Connectique fibre

### Jarretière optique avec connecteurs de type LC

### Convertisseur optique

### Adaptateur Gbic ou miniGbic ou SFP

### Adaptateur Gbic ou miniGbic ou SFP

### Adaptateur Gbic ou miniGbic ou SFP
