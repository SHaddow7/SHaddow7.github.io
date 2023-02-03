---
layout: default
title: UDP
parent: 4 - Transport
grand_parent: Réseaux
has_toc: false
nav_order: 2
---

# User Datagram Protocol (UDP)

## Principes

---

- Introduit la notion de port UDP (un entier entre 0 et 65535).
- Réduit au maximum le traitement.
- Fonctionne en mode non connecté.
- Ne vérifie pas que le datagramme arrive (Pas d'accusé de réception).
- Ne vérifie pas les congestions (Pas de contrôle de flux).
- N'effectue pas de réémission.

## Usages

---

- DNS
- DHCP
- SNMP
- TOIP
- ...

## Les ports

---

- Le numéro de port vient s'ajouter à l'adresse IP pour créer un couple appelé "socket UDP".
- Identique à TCP.

## Entête UDP

---

```plaintext
    ┌────────────────────┬───────────────────┬─────────────────────────────┬─────────────────────┬
    |  Entête  Couche 2  |  Entête Couche 3  |  Couche 4 - Datagramme UDP  |  Suffixe  Couche 2  |
    └────────────────────┴───────────────────┴─────────────────────────────┴─────────────────────┴
```
