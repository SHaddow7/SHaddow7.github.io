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

Spanning Tree est un algorithme utilisé pour éliminer les boucles dans un réseau local (LAN) en utilisant un arbre couvrant. Il s'agit d'un protocole de couche de liaison de données qui travaille avec les commutateurs pour déterminer le chemin le plus efficace pour transmettre les données et éviter les boucles.

Les boucles peuvent survenir dans un réseau en raison de la présence de plusieurs chemins entre les périphériques. Si les données sont transmises à travers ces chemins simultanément, elles peuvent être transmises en boucle indéfiniment, entraînant une surutilisation de la bande passante et une perte de performance du réseau.

L'algorithme Spanning Tree fonctionne en créant un arbre couvrant qui comprend un seul chemin entre tous les périphériques réseau. Cela signifie que les données ne peuvent être transmises qu'à travers un seul chemin, ce qui élimine les boucles. Si un lien physique échoue, l'algorithme Spanning Tree déterminera un nouveau chemin pour transmettre les données, ce qui garantit la continuité du réseau.

L'utilisation de Spanning Tree est importante pour garantir la stabilité et la fiabilité d'un réseau local. Il est pris en charge par les commutateurs modernes et peut être utilisé pour gérer les réseaux de toutes tailles, depuis les petits réseaux locaux jusqu'aux grandes infrastructures de data center.

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
• Disabled : désactivé, un administrateur peut manuellement désactiver
un port s'il le souhaite.

## Trames LLC

---

Une trame LLC (Logical Link Control) est une structure de données utilisée pour gérer les communications sur les réseaux locaux (LAN) utilisant le protocole Ethernet. Elle se trouve à la couche liaison de données de la pile de protocoles OSI (Open System Interconnection) et se charge de gérer les erreurs de transmission, la synchronisation et la délivrance des données.

La structure de la trame LLC comprend les éléments suivants :

En-tête LLC : Il comprend une séquence de contrôle qui définit le type de trame et les informations supplémentaires nécessaires pour gérer les communications.

Données : Elles représentent le contenu des données à transmettre.

Cyclic Redundancy Check (CRC) : Il s'agit d'un algorithme de vérification de la correction des données transmises. Il est utilisé pour détecter les erreurs de transmission et garantir la fiabilité des communications.

La trame LLC est importante pour les communications Ethernet, car elle garantit la fiabilité et la stabilité des transmissions de données sur les réseaux locaux. Les trames LLC sont utilisées pour transmettre des données Ethernet entre des périphériques tels que des ordinateurs, des routeurs et des commutateurs, et sont fondamentales pour le fonctionnement des réseaux locaux.

```
┌───────────┬─────┬─────────────────┬────────────┬──────┬─────────┬──────────┬─────┬───────────┐
| Préambule | SFD | MAC destination | MAC source | Type | Données | Bourrage | FCS | Extension |
└───────────┴─────┴─────────────────┴────────────┴──────┴─────────┴──────────┴─────┴───────────┘
```

### Trame LLC (IEEE 802.3)

## Encapsulation des BPDU

---

Les BPDU (Bridge Protocol Data Units) sont des paquets utilisés par le protocole Spanning Tree pour échanger des informations entre les commutateurs dans un réseau local (LAN). Ils sont utilisés pour déterminer le chemin le plus efficace pour transmettre les données dans un réseau sans boucle et garantir la stabilité du réseau.

L'encapsulation des BPDU implique le processus d'ajout des informations BPDU à une trame Ethernet standard pour les transmettre dans le réseau. La trame BPDU encapsulée comporte les éléments suivants :

En-tête Ethernet : Il inclut des informations sur la destination et la source de la trame, ainsi que la longueur de la trame.

BPDU : Les informations BPDU incluent des informations sur les ports, le coût du chemin, la racine du réseau et l'identification de l'équipement.

Cyclic Redundancy Check (CRC) : Il s'agit d'un algorithme de vérification de la correction des données transmises, utilisé pour détecter les erreurs de transmission.

L'encapsulation des BPDU est cruciale pour le fonctionnement du protocole Spanning Tree. Les commutateurs échangent des BPDU encapsulés pour déterminer le chemin le plus efficace pour transmettre les données et éliminer les boucles dans le réseau. L'encapsulation garantit également la fiabilité et la stabilité des communications dans le réseau en utilisant des mécanismes de vérification de la correction des données.

## Spanning Tree Protocol

---

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

---

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
