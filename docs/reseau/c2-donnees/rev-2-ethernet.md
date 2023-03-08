---
layout: default
title: Ethernet
parent: 2 - Liaison Données
grand_parent: Réseaux
has_toc: false
nav_order: 2
---

# Ethernet - Trame Ethernet historique ou v2

## La trame

---

```
   ┌───────────┬─────┬─────────────────┬────────────┬──────┬─────────┬──────────┬─────┬───────────┐
   | Préambule | SFD | MAC destination | MAC source | Type | Données | Bourrage | FCS | Extension |
   └───────────┴─────┴─────────────────┴────────────┴──────┴─────────┴──────────┴─────┴───────────┘
```

## Champs de l'entête

---

- **Préambule** : 7 octets à 10101010 pour synchroniser les stations
- **Start Frame delimiter (SFD)** : 1 octet à 10101011 pour annoncer le début de la trame
- **MAC destination** : 6 octets
- **MAC source** : 6 octets
- **Type** : 2 octets indiquant le protocole de niveau 3
  - 0800 pour IPv4
  - 86DD pour IPV6
  - 0806 pour ARP
- **Données** : padding avec des zéros si taille < 46 octets
- **Frame Check Sequence (FCS)** : contient le CRC de la trame qui permet au destinataire d'en vérifier l'intégrité.
