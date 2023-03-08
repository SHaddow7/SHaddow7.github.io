---
layout: default
title: Adresse MAC
parent: 2 - Liaison Données
grand_parent: Réseaux
has_toc: false
nav_order: 1
---

# Adresse MAC

## Principes

---

L'Adresse MAC (Media Access Control) ou adresse physique ou ethernet est un **identifiant unique attribué à chaque périphérique réseau**. Il est utilisé pour **identifier de manière unique les périphériques sur un réseau local (LAN) ou étendu (WAN)**. Les adresses MAC sont **formées de 12 caractères hexadéciaux** séparés par des points ou des tirets.

Exemples :

```plaintext
08:00:20:0a:15:db     Carte réseau Oracle Corporation
f0:1f:af:16:0f:df     Carte réseau Dell Inc.
00:07:cb:c4:e8:0c     Carte réseau Freebox SAS
```

Les premiers 6 octets sont attribués par l'Organisation chargée des l'attribution des adresses MAC (Organizationally Unique Identifier ou OUI) et les 6 derniers octets sont attribués par le fabricant du périphérique. Les adresses MAC sont **utilisés par le protocole de liaison de données (Data Link Layer) pour identifier les destinataires sur le réseau**. Il faut noter que même si l'adresse MAC est prévue à être unique mondialement, il y a toujours la possibilité de la changer logiciellement.

## Les adresses réservées

---

|       Adresses        | Descriptions                  |
| :-------------------: | ----------------------------- |
| **FF:FF:FF:FF:FF:FF** | Adresse de broadcast Ethernet |
| **00:00:00:00:00:00** | Adresse vide ou non attribuée |
| **01:00:5E:xx:xx:xx** | Adresse de multicast IPv4     |
| **33:33:xx:xx:xx:xx** | Adresse de multicast IPv6     |
| **01:80:C2:00:00:00** | Adresse de « spanning tree »  |
| **00:00:5E:00:01:xx** | Protocole VRRP                |
