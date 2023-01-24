---
layout: default
title: 2 - Liaison Données
parent: Réseaux
# nav_order: 2
---

# Couche 2 - Liaison Données

## Principes

- Adressage de niveau 2 en Ethernet
- Adresse MAC (Media Access Control) ou adresse physique ou ethernet.
- Prévue pour être unique mondialement, mais possibilité de la changer logiciellement.
- Composée de 6 octets affichés en paires de chiffres hexadécimaux séparés par des deux-points
- Décomposée en 2 parties (Constructeur / Carte)

Le préfixes est appelé Organizationally Unique Identifier (OUI)

Exemples :

```plaintext
08:00:20:0a:15:db     Carte réseau Oracle Corporation
f0:1f:af:16:0f:df     Carte réseau Dell Inc.
00:07:cb:c4:e8:0c     Carte réseau Freebox SAS
```

## Adresses réservées

```plaintext
FF:FF:FF:FF:FF:FF     Adresse de broadcast Ethernet
00:00:00:00:00:00     Adresse vide ou non attribuée
01:00:5E:xx:xx:xx     Adresse de multicast IPv4
33:33:xx:xx:xx:xx     Adresse de multicast IPv6
01:80:C2:00:00:00     Adresse de « spanning tree »
00:00:5E:00:01:xx     Protocole VRRP
```

## Trame Ethernet historique ou v2

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

Un commutateur est un équipement de réseau qui permet de connecter plusieurs dispositifs ensemble dans un réseau local. Il permet aux données de circuler entre ces dispositifs en utilisant des ports d'entrée et de sortie. Il permet également de filtrer et de transmettre les données à destination des dispositifs connectés, en utilisant l'adresse MAC de chaque dispositif.

## Domaine de diffusion (broadcast)

Espace logique d'un réseau informatique où n'importe quel ordinateur peut directement communiquer avec tous les autres du même domaine, sans devoir passer par un routeur.

Il s’agit donc de l’ensemble des machines qui recevront une trame de broadcast envoyée par l’une d’entre elles.

## VLAN (Virtual Local Area Network)

Un VLAN (Virtual Local Area Network) est une fonctionnalité de commutation qui permet de créer des sous-réseaux virtuels à l'intérieur d'un réseau physique. Cela permet de diviser un réseau physique en plusieurs réseaux logiques indépendants, chacun avec sa propre adresse IP et sa propre table de routage.

Les VLANs sont utilisés pour améliorer la sécurité du réseau en limitant la propagation des données, pour améliorer l'utilisation de la bande passante en limitant les collisions de données, et pour améliorer la flexibilité en permettant de déplacer des dispositifs réseau entre différents sous-réseaux sans changer leur adresse IP.

Il existe deux types de VLANs : VLAN statique et VLAN dynamique.

VLAN statique : les membres d'un VLAN statique sont configurés manuellement par l'administrateur.
VLAN dynamique : les membres d'un VLAN dynamique sont ajoutés ou supprimés automatiquement en fonction de critères prédéfinis.

## VLAN - Liaison Trunk

Une liaison Trunk (ou Trunking) est une méthode utilisée pour connecter des commutateurs ensemble en utilisant un seul port pour transmettre des données de plusieurs VLANs. Elle permet de transmettre les données de plusieurs VLANs sur un seul câble physique, en utilisant une technique de marquage VLAN, comme le protocole IEEE 802.1q.

Les liaisons Trunk permettent de connecter des commutateurs ensemble pour créer des VLANs étendus sur plusieurs commutateurs. Par exemple, si vous avez un commutateur dans le hall d'entrée de votre entreprise et un autre commutateur dans votre salle de réunion, vous pouvez utiliser une liaison Trunk pour connecter ces deux commutateurs ensemble et étendre un VLAN de la salle de réunion jusqu'au hall d'entrée.

Une liaison Trunk peut également être utilisée pour connecter des commutateurs à un routeur qui supporte les VLANs, pour acheminer les données de différents VLANs vers des réseaux distants.

## Les VLAN et le TAG

## Boucles, Tempêtes de broadcast

## Spanning Tree Protocol

Bridge Protocol Data Units (BPDU)
• Trame de contrôle de STP
• Échangé entre les switches (toutes les 2s)
• États des ports :
• Listening : le commutateur « écoute » les BPDU et détermine la
topologie réseau ;
• Learning : le commutateur construit une table faisant correspondre les
adresses MAC aux numéros des ports ;
• Forwarding : un port reçoit et envoie des données, opération normale ;
• Blocking : un port provoquant une boucle, aucune donnée n'est
envoyée ou reçue mais le port peut passer en mode forwarding si un
autre lien tombe ;
• Disabled : désactivé, un

## Trames LLC

```
┌───────────┬─────┬─────────────────┬────────────┬──────┬─────────┬──────────┬─────┬───────────┐
| Préambule | SFD | MAC destination | MAC source | Type | Données | Bourrage | FCS | Extension |
└───────────┴─────┴─────────────────┴────────────┴──────┴─────────┴──────────┴─────┴───────────┘
```

### Trame LLC (IEEE 802.3)

# Couche 2 - Encapsulation des BPDU

# Couche 2 - Spanning Tree Protocol

4 Phases :
• Élection du commutateur racine,
• Chaque commutateur possède une priorité en plus de son adresse MAC
• Le commutateur avec la priorité la plus basse, devient racine.
• En cas d’égalité, c’est l’adresse MAC la plus petite qui l’emporte.
• Détermination du port racine (RP) sur chacun des autres commutateurs,
• C’est le port qui permet d’atteindre le commutateur racine.
• Si plusieurs ports permettent d’atteindre le commutateur racine, le port qui
minimise le coût qui devient le port racine.
• Détermination du port désigné (DP) sur chaque segment,
• C’est le port qui permet d’atteindre le segment.
• Si plusieurs ports permettent d’atteindre le même segment, le port qui
minimise le coût qui devient le port désigné pour ce segment.
• Blocage des autres ports (BP).
• Tous les ports qui ne sont ni racine ni désignés sont bloqués.

Défaut de STP : Le temps de convergence (environ 30s)
• Meilleurs solutions :
• Rapid Spanning Tree Protocol (RSTP)
• Per-VLAN Spanning Tree (PVST)
• Multiple Spanning Tree Protocol (MSTP)
• Shortest Path Bridging (SPB)

# Switchs HP-3Com

Les commutateurs HP-3Com sont des équipements de réseau fabriqués par Hewlett Packard Enterprise (HPE) et 3Com, une entreprise de réseaux qui a été acquise par HPE en 2010. Ces commutateurs sont conçus pour offrir des fonctionnalités avancées de commutation et de routage pour les réseaux locaux d'entreprise.

Les commutateurs HP-3Com offrent des fonctionnalités telles que la prise en charge des VLANs, des liaisons Trunk, des protocoles de routage, de la qualité de service (QoS), de la sécurité et de la gestion à distance. Ils peuvent également prendre en charge des technologies telles que le Power over Ethernet (PoE), qui permet de fournir de l'énergie aux périphériques connectés via le câblage Ethernet.

Les commutateurs HP-3Com sont disponibles dans une variété de formats, allant des commutateurs de bureau aux commutateurs de châssis, pour répondre aux besoins de différentes tailles d'entreprise et de différentes applications. Ils peuvent également être gérés à l'aide de logiciels de gestion de réseau pour une configuration, une surveillance et une maintenance simplifiées.

• TAG : 4 octets ajoutés à la trame Ethernet afin d'y indiquer l'appartenance à un VLAN (802.1Q)
• VLAN natif : Vlan par défaut défini sur un switch (le Vlan 1 est le Vlan natif habituellement)
• PVID : le Port Vlan ID permet de définir un VLAN par défaut différent du VLAN natif sur un
certain port. Utile en cas de trunk, c'est ce N° de Vlan qui sera affecté aux trames non tagguées
arrivant sur le port.
• Port ACCESS :
• Type de port à utiliser pour le branchement d'un matériel non "Vlan-Aware" (station de travail,
serveur, etc...).
• En entrée sur le port :
• Si la trame est Untagged, la trame est alors tagged avec le PVID du port.
• Si la trame est Tagged, elle ne passera que si elle est tagged avec le PVID du port
(droped sinon).
• En sortie vers la station :
• Le switch ne laissera passer que les trames faisant partie du VLAN correspondant au
PVID du port, tout en retirant le Tag.
• Les autres trames seront droped.

• Port TRUNK :
• A utiliser pour relier des équipements "Vlan-Aware" tels que les switchs ou routeurs.
• Ce type de port permet de faire circuler des trames issues de Vlan différents sur le même
brin, et de les différencier à l'arrivée.
• Les trames seront Tagged, hormis celles du Vlan par défaut défini par le PVID du port qui
seront non tagged (dans ce cas, si
• une trame arrive Tagged avec le Vlan par défaut, le tag est retiré).
• Port HYBRID :
• Identique au port Trunk, mais laisse passer également les trames non tagged de plusieurs
VLAN.
• EDGED port :
• Qualification d'un port au niveau du spanning tree pour accélérer le recalcul du schéma.
Seuls les ports qui ne sont pas reliés à un commutateur peuvent être définis en "edge" et
basculer immédiatement en état "forwarding".
