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

Le protocole **UDP (User Datagram Protocol)** est un **protocole de transport de données léger et rapide**, qui **fonctionne en mode non connecté** et **ne garantit pas la fiabilité** de la transmission de données. UDP est particulièrement **adapté pour les applications qui requièrent une transmission rapide des données**, mais qui n'exigent pas une transmission de données fiable et ordonnée.

Le protocole UDP se distingue du protocole TCP par ses caractéristiques principales :

- **Introduit la notion de port UDP** : chaque message envoyé par UDP possède un numéro de port UDP qui permet à l'application destinataire de savoir à quelle application expéditrice le message est destiné.
- **Réduit au maximum le traitement** : UDP est conçu pour réduire autant que possible le temps de traitement nécessaire à la transmission de données.
- **Fonctionne en mode non connecté** : contrairement à TCP, UDP ne nécessite pas d'établir une connexion avant d'envoyer des données.
- **Ne vérifie pas que le datagramme arrive** : UDP ne propose pas de mécanisme d'accusé de réception pour garantir que les données envoyées sont correctement reçues.
- **Ne vérifie pas les congestions** : UDP ne propose pas de mécanisme de contrôle de flux pour éviter la congestion du réseau.
- **N’effectue pas de réémission** : en cas de perte de paquets, UDP ne propose pas de mécanisme de réémission des données.

## Usages

---

UDP est souvent utilisé pour les applications qui nécessitent une transmission rapide de données, comme la Voix sur IP (TOIP), les protocoles de résolution de noms de domaine (DNS), la configuration automatique des adresses IP via DHCP et la supervision à distance de réseaux via le protocole SNMP.

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
