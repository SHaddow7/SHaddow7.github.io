---
layout: default
title: LLC
parent: 2 - Liaison Données
grand_parent: Réseaux
has_toc: false
nav_order: 8
---

# Trames LLC

## Principes

---

Une trame LLC (Logical Link Control) est une structure de données utilisée pour **gérer les communications sur les réseaux locaux (LAN) utilisant le protocole Ethernet**. Elle se trouve à la couche 2 (liaison de données) du modèle OSI et se charge de gérer les erreurs de transmission, la synchronisation et la délivrance des données.

La trame LLC est importante pour les communications Ethernet, car elle **garantit la fiabilité et la stabilité des transmissions de données** sur les réseaux locaux. Les trames LLC sont utilisées pour transmettre des données Ethernet entre des périphériques tels que des ordinateurs, des routeurs et des commutateurs, et sont fondamentales pour le fonctionnement des réseaux locaux.

## Structure trame LLC

---

La structure de la trame LLC comprend les éléments suivants :

**En-tête LLC** : Il comprend une séquence de contrôle qui définit le type de trame et les informations supplémentaires nécessaires pour gérer les communications.

**Données** : Elles représentent le contenu des données à transmettre.

**Cyclic Redundancy Check (CRC)** : Il s'agit d'un algorithme de vérification de la correction des données transmises. Il est utilisé pour détecter les erreurs de transmission et garantir la fiabilité des communications.

```
┌───────────┬─────┬─────────────────┬────────────┬──────┬─────────┬──────────┬─────┬───────────┐
| Préambule | SFD | MAC destination | MAC source | Type | Données | Bourrage | FCS | Extension |
└───────────┴─────┴─────────────────┴────────────┴──────┴─────────┴──────────┴─────┴───────────┘
```

## Trame LLC (IEEE 802.3)

```
                                                    46 -> 1500 octets
                                                  <-------------------->
┌───────────┬─────┬─────────────┬─────────┬───────┬─────────┬──────────┬─────┬───────────┐
| Préambule | SFD | Adresse     | Adresse | Long. | Données | Bourrage | FCS | Extension |
|           |     | destination | source  | Type  |         |          |     |           |
└───────────┴─────┴─────────────┴─────────┴───────┴─────────┴──────────┴─────┴───────────┘
                  <---------------------------------------------------------->
                   Trame MAC
                                                        Trame LLC
                                                <--------------------------------->
    - Longueur / type :  0 -> 1500              ┌─────────────┬───────────────────┐
    - Type :  > 1536                            | Entête LLC  |      Données      |
                                                └─────────────┴───────────────────┘
```
