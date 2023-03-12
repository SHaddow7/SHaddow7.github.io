---
layout: default
title: UDP
parent: 4 - Transport
grand_parent: Réseaux
has_toc: false
nav_order: 2
---

# UDP (User Datagram Protocol)

## Principes

---

Le protocole **UDP (User Datagram Protocol)** est un **protocole de transport de données léger et rapide**, qui **fonctionne en mode non connecté** et **ne garantit pas la fiabilité** de la transmission de données. Il est **adapté pour les applications qui requièrent une transmission rapide des données**, mais qui n'exigent pas une transmission de données fiable et ordonnée.

Le protocole UDP se distingue du protocole TCP par ses caractéristiques principales :

- **Introduit la notion de port UDP** (un entier entre 0 et 65 535)
- **Réduit au maximum le traitement**
- **Fonctionne en mode non connecté**
- **Ne vérifie pas que le datagramme arrive**
- **Ne vérifie pas les congestions**
- **N’effectue pas de réémission**

## Usages

---

UDP est souvent utilisé pour les applications qui nécessitent une transmission rapide de données, tels que :

- la Voix sur IP **TOIP**,
- les protocoles de résolution de noms de domaine **DNS**,
- la configuration automatique des adresses IP via **DHCP**,
- la supervision à distance de réseaux via le protocole **SNMP**.

## Les ports

---

- Le numéro de port vient s'ajouter à l'adresse IP pour créer un couple appelé "**socket UDP**".
- Identique à TCP

| Noms                           | Descriptions                                              |
| :----------------------------- | :-------------------------------------------------------- |
| **Ports connus**               | compris entre **0 et 1023** (réservés à des applications) |
| **Ports enregistrés**          | compris entre **1024 et 49151**                           |
| **Ports dynamiques ou privés** | compris entre **49152 et 65535**                          |

## Entête UDP

---

### Champs de l'entête

| Champs            | Descriptions                                          |
| ----------------- | ----------------------------------------------------- |
| Port source       | 16 bits                                               |
| Port destination  | 16 bits                                               |
| Taille            | 16 bits                                               |
| Somme de contrôle | 16 bits, calculée à partir de l'entête et des données |
| Donnees           | 32 bits                                               |
