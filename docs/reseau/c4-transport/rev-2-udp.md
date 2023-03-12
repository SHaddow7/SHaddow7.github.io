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

Le protocole **UDP (User Datagram Protocol)** est un **protocole de transport de données léger et rapide**, qui **fonctionne en mode non connecté** et **ne garantit pas la fiabilité** de la transmission de données.

UDP est **adapté pour les applications qui requièrent une transmission rapide des données**, mais qui n'exigent pas une transmission de données fiable et ordonnée.

Le protocole UDP se distingue du protocole TCP par ses caractéristiques principales :

- **Introduit la notion de port UDP** : chaque message envoyé par UDP possède un numéro de port UDP qui permet à l'application destinataire de savoir à quelle application expéditrice le message est destiné.
- **Réduit au maximum le traitement** : UDP est conçu pour réduire autant que possible le temps de traitement nécessaire à la transmission de données.
- **Fonctionne en mode non connecté** : contrairement à TCP, UDP ne nécessite pas d'établir une connexion avant d'envoyer des données.
- **Ne vérifie pas que le datagramme arrive** : UDP ne propose pas de mécanisme d'accusé de réception pour garantir que les données envoyées sont correctement reçues.
- **Ne vérifie pas les congestions** : UDP ne propose pas de mécanisme de contrôle de flux pour éviter la congestion du réseau.
- **N’effectue pas de réémission** : en cas de perte de paquets, UDP ne propose pas de mécanisme de réémission des données.

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
- Identique à TCP :<br>
  a. Permet d'**identifier un canal de communication** sur une machine.<br>
  b. Les **ports** sont identifiés par un entier compris entre **0 et 65535**.<br>
  c. Les **port connus**, compris entre **0 et 1023** (réservés à des applications)<br>
  d. Les **ports enregistrés**, compris entre **1024 et 49151**<br>
  e. Les **ports dynamiques ou privés**, compris entre **49152 et 65535**<br>

## Entête UDP

---

```plaintext
    ┌────────────────────┬───────────────────┬─────────────────────────────┬─────────────────────┬
    |  Entête  Couche 2  |  Entête Couche 3  |  Couche 4 - Datagramme UDP  |  Suffixe  Couche 2  |
    └────────────────────┴───────────────────┴─────────────────────────────┴─────────────────────┴
```

### Champs de l'entête

| Champs            | Descriptions                                          |
| ----------------- | ----------------------------------------------------- |
| Port source       | 16 bits                                               |
| Port destination  | 16 bits                                               |
| Taille            | 16 bits                                               |
| Somme de contrôle | 16 bits, calculée à partir de l'entête et des données |
| Donnees           | 32 bits                                               |
