---
layout: default
title: 2 - Liaison Données
parent: Réseaux
# nav_order: 2
---

# Couche 2 : Liaison Données

## L'adresse MAC

---

L'Adresse MAC (Media Access Control) ou adresse physique ou ethernet est un identifiant unique attribué à chaque périphérique réseau. Il est utilisé pour identifier de manière unique les périphériques sur un réseau local (LAN) ou étendu (WAN).

Les adresses MAC sont formées de 12 caractères hexadéciaux séparés par des points ou des tirets, par exemple :

```plaintext
08:00:20:0a:15:db     Carte réseau Oracle Corporation
f0:1f:af:16:0f:df     Carte réseau Dell Inc.
00:07:cb:c4:e8:0c     Carte réseau Freebox SAS
```

Les premiers 6 octets sont attribués par l'Organisation chargée des l'attribution des adresses MAC (Organizationally Unique Identifier ou OUI) et les 6 derniers octets sont attribués par le fabricant du périphérique. Les adresses MAC sont utilisés par le protocole de liaison de données (Data Link Layer) pour identifier les destinataires sur le réseau.

Il faut noter que même si l'adresse MAC est prévue à être unique mondialement, il y a toujours la possibilité de la changer logiciellement.

## Les adresses réservées

---

|     Adresses      | Descriptions                  |
| :---------------: | ----------------------------- |
| FF:FF:FF:FF:FF:FF | Adresse de broadcast Ethernet |
| 00:00:00:00:00:00 | Adresse vide ou non attribuée |
| 01:00:5E:xx:xx:xx | Adresse de multicast IPv4     |
| 33:33:xx:xx:xx:xx | Adresse de multicast IPv6     |
| 01:80:C2:00:00:00 | Adresse de « spanning tree »  |
| 00:00:5E:00:01:xx | Protocole VRRP                |

## Trame Ethernet historique ou v2

---

### La trame

```
   ┌───────────┬─────┬─────────────────┬────────────┬──────┬─────────┬──────────┬─────┬───────────┐
   | Préambule | SFD | MAC destination | MAC source | Type | Données | Bourrage | FCS | Extension |
   └───────────┴─────┴─────────────────┴────────────┴──────┴─────────┴──────────┴─────┴───────────┘
```

### Champs de l'entête

- Préambule : 7 octets à 10101010 pour synchroniser les stations
- Start Frame delimiter (SFD) : 1 octet à 10101011 pour annoncer le début de la trame
- MAC destination : 6 octets
- MAC source : 6 octets
- Type : 2 octets indiquant le protocole de niveau 3
  - 0800 pour IPv4
  - 86DD pour IPV6
  - 0806 pour ARP
- Données : padding avec des zéros si taille < 46 octets
- Frame Check Sequence (FCS) : contient le CRC de la trame qui permet au destinataire d'en vérifier l'intégrité.

## Commutateurs (Switches)

---

Un commutateur est un équipement de réseau qui permet de connecter plusieurs dispositifs ensemble dans un réseau local. Il permet aux données de circuler entre ces dispositifs en utilisant des ports d'entrée et de sortie. Il permet également de filtrer et de transmettre les données à destination des dispositifs connectés, en utilisant l'adresse MAC de chaque dispositif.

## Domaine de diffusion (broadcast)

---

Espace logique d'un réseau informatique où n'importe quel ordinateur peut directement communiquer avec tous les autres du même domaine, sans devoir passer par un routeur.

Il s’agit donc de l’ensemble des machines qui recevront une trame de broadcast envoyée par l’une d’entre elles.

## VLAN (Virtual Local Area Network)

---

### Définition

Un VLAN (Virtual Local Area Network) est une **techniqeue de segmentation de réseau qui permet de créer des sous-réseaux virtuels à l'intérieur d'un réseau physique**. Cela permet de diviser un réseau physique en plusieurs réseaux logiques indépendants, chacun avec sa propre adresse IP et sa propre table de routage.

Les VLANs sont utilisés pour améliorer la sécurité du réseau en limitant la propagation des données, pour améliorer l'utilisation de la bande passante en limitant les collisions de données, et pour améliorer la flexibilité en permettant de déplacer des dispositifs réseau entre différents sous-réseaux sans changer leur adresse IP.

### Liaison Trunk

Une liaison Trunk (ou Trunking) est une méthode utilisée pour connecter des commutateurs ensemble en utilisant un seul port pour transmettre des données de plusieurs VLANs. Elle permet de transmettre les données de plusieurs VLANs sur un seul câble physique, en utilisant une technique de marquage VLAN, comme le protocole IEEE 802.1q. Les liaisons Trunk permettent de connecter des commutateurs ensemble pour créer des VLANs étendus sur plusieurs commutateurs.

Généralement configurés avec le protocole IEEE 802.1Q, les trunks VLAN ajoutent un tag (ou en-tête) à chaque paquet pour indiquer à quel VLAN il appartient. Cela permet aux équipements de communication de savoir à quel VLAN il appartient. Cela permet aux équipements de communication de savoir à quel VLAN un paquet appartient et de le livrer à la destination appropriée.

## Boucles, Tempêtes de broadcast

---

Une tempête de broadcast est un **problème réseau dans lequel un grand nombre de paquets broadcast (adressés à tous les périphériques sur un réseau) sont transmis en boucle dans le réseau**, entraînant une saturation de la bande passante et une perte de performance.

Elle peut être causée par une erreur de configuration, une défaillance de matériel ou une attaque malveillante, entre autres. Les paquets broadcast sont transmis à tous les périphériques sur un réseau, ce qui peut entraîner un nombre important de réponse et de transmissions supplémentaires, ce qui peut rapidement saturer la bande passante et cela engendre une « tempête de broadcast ».

## Spanning Tree Protocol

---

## Trames LLC

---

```
┌───────────┬─────┬─────────────────┬────────────┬──────┬─────────┬──────────┬─────┬───────────┐
| Préambule | SFD | MAC destination | MAC source | Type | Données | Bourrage | FCS | Extension |
└───────────┴─────┴─────────────────┴────────────┴──────┴─────────┴──────────┴─────┴───────────┘
```

### Trame LLC (IEEE 802.3)

# Couche 2 - Encapsulation des BPDU

---

# Couche 2 - Spanning Tree Protocol

---

# Switchs HP-3Com

---
