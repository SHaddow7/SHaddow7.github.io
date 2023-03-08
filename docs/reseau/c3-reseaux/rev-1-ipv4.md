---
layout: default
title: IPV4
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 1
---

# IPV4

## Principes

L'adresse IP v4 est utilisé pour **identifier de manière unique chaque dispositif sur un réseau** et **permettre la communication entre eux**. Elle est composée de **4 octets** (allant de 0-255, 32 bits au total). Ce qui donne un total de 4 294 967 296 adresses possibles L'adresse IP v4 est généralement affichée avec 4 entiers décimaux séparés par des points, par exemple "192.168.0.1".

L'adresse IP est généralement **associer à un masque de sous-réseaux**. Ce qui **permet de le découper en deux partie** : **NetID**, composé d'une suite de 1 et le **HostID** qui représente une suite de 0.

L'association adresse/masque donne plusieurs informations importantes, notamment le nombre de machines adressables :

- plus le masque est grand, moins on peut adresser de machines

Représentation de l'adresse IP V4 :

- adresse IP : 131.25.120.36 / 255.255.255.0
- notation CIDR : 131.25.120.36 / 24

{: .note}

> Cependant, le nombre limité d'adresses IPv4 disponibles a conduit à l'utilisation croissante d'adresses IPv6, qui offrent un espace d'adressage beaucoup plus important

## Calcul adresse de réseau et de broadcast

---

Exemple : 131.25.120.36 / 24

- **Adresse de réseau** : 131.25.120.0
- **Adresse de broadcast** : 131.25.120.255
- **Plage d'adresses** : 131.25.120.1 131.25.120.254
- **Nombres de machines adressables** : 2<sup>8</sup> - 2 = 254

## Classes d'adresses

---

| Classe | Bits de départ | Début     | Fin             | CIDR | Masque        | Machines |
| :----: | -------------- | --------- | --------------- | ---- | ------------- | -------- |
|   A    | 0              | 0.0.0.0   | 127.255.255.255 | /8   | 255.0.0.0     | 777214   |
|   B    | 10             | 128.0.0.0 | 191.255.255.255 | /16  | 255.255.0.0   | 65534    |
|   C    | 110            | 192.0.0.0 | 223.255.255.255 | /24  | 255.255.255.0 | 254      |
|   D    | 1110           | 224.0.0.0 | 239.255.255.255 |      |               |          |
|   E    | 1111           | 240.0.0.0 | 255.255.255.255 |      |               |          |

## Type d'adresses

---

**Adresses réservées**: Adresses particulières, réservées au fonctionnement du réseau.

**Adresses privées** : Adresses non routables, utilisables uniquement sur le réseau local. Uniques sur le réseau local, mais pas globalement. À choisir parmi les plages d'adresses privées en fonction du nombre de machines.

**Adresses publiques** : Toutes les adresses qui ne sont ni réservées ni privées. Adresses routables et uniques sur Internet; Fournies par le Fournisseur d'Accès Internet (FAI)

## Adresses réservées

---

| Adresse                    | Début           | Fin             | CIDR | Masque          |
| -------------------------- | --------------- | --------------- | ---- | --------------- |
| Adresse nulle              | 0.0.0.0         | 0.0.0.0         | /32  | 255.255.255.255 |
| Broadcast général          | 255.255.255.255 | 255.255.255.255 | /32  | 255.255.255.255 |
| Bouclage (loopback)        | 127.0.0.0       | 127.255.255.255 | /8   | 255.0.0.0       |
| Apipa (Autoconfigurée)     | 169.254.0.0     | 169.254.255.255 | /16  | 255.255.0.0     |
| Multicast                  | 224.0.0.0       | 239.255.255.255 | /4   | 240.0.0.0       |
| NAT à grande échelle (RIE) | 100.64.0.0      | 100.127.255.255 | /10  | 255.192.0.0     |

## Adresses privées

---

Pour chaque classe (A, B et C) des adresses sont dites privées :

- Elles sont réservées à un usage privé et interne.
- Elles ne sont pas routables sur Internet (Les routeurs doivent refuser)
- Elles sont unique localement (sur le WAN interne) mais pas globalement sur le réseau mondial.

| Classe | Début       | Fin             |
| :----: | ----------- | --------------- |
|   A    | 10.0.0.0    | 10.255.255.255  |
|   B    | 172.16.0.0  | 172.31.255.255  |
|   C    | 192.168.0.0 | 192.168.255.255 |

## Attribution des adresses publiques

---

Voici une liste exhausitive d'organisme qui attribuent des adresses publiques :

- l'Internet Assigned Numbers Authority (IANA)
- l'Internet Corporation for Assigned Names and Numbers (ICANN)
- l'American Registry for Internet Numbers (ARIN) pour l'Amérique du Nord
- le Réseaux IP Européens Network Coordination Centre (RIPE NCC) pour l'Europe, le Moyen-Orient et certaines parties de l'Asie centrale
- l'Asia-Pacific Network Information Centre (APNIC) pour la région Asie-Pacifique
- le Latin America and Caribbean Network Information Centre (LACNIC) pour l'Amérique latine et les Caraïbes.

## CIDR

---

Le CIDR (Classless Inter-Domain Routing) est un **système d'adressage IP qui a remplacé le mécanisme des classes** utilisé auparavant. Le CIDR utilise une **notation avec des slash suivis d'un nombre** qui indique le nombre de bits à 1 dans le masque de sous-réseau.

Par exemple :

- /24 : 255.255.255.0
- /16 : 255.255.0.0
- /8 : 255.0.0.0

Le CIDR **permet d'utiliser des masques de sous-réseau en dehors des classes traditionnelles**, offrant ainsi plus de granularité pour la configuration des réseaux. Le CIDR introduit également le subnetting et le supernetting, qui permettent de diviser un réseau en sous-réseaux plus petits ou de regrouper plusieurs réseaux en un seul réseau plus grand.

Le VLSM (Variable Length Subnet Mask) **permet d'utiliser des masques de sous-réseau de longueurs variables**, ce qui permet de créer des sous-réseaux de tailles différentes.

Par exemple :

- /17 : 32766 hôtes
- /22 : 1022 hôtes
- /30 : 2 hôtes
- /32 : 1 hôte

## Masque hors-classes

---

Exemple : 131.25.120.36 / 255.255.224.0

```plaintext
1 ) Effectuer la décomposition en binaire :

   131    .    25     .    120    .   36             # Adresse IP
1000 0011 . 0001 1001 . 0111 1000 . 0010 0100

   255    .    255    .    224    .   0              # Masque
1111 1111 . 1111 1111 . 1110 0000 . 0000 0000
```

```plaintext
2 ) Effectuer le ET Logique :
1000 0011 . 0001 1001 . 0111 1000 . 0010 0100
1111 1111 . 1111 1111 . 1110 0000 . 0000 0000
---------------------------------------------
1000 0011 . 0001 1001 . 0110 0000 . 0000 0000
```

```plaintext
3) Retraduire en décimal
131 . 25 . 96 . 0
131 . 25 . 127 . 255
```

## Autres méthodes

---

- Calculatrice spécialisées
- Linux : Gip IP Adresse Calculator, ipcalc
- Windows : SolarWinds IP Calculator
- Web : ipcalc

## Découpage de sous-réseaux (SubNetting)

---

Le découpage se fait toujours en deux parties égales

## Exemples de masques

---

| CIDR | HostID | Masque        | Machines                  |
| :--: | ------ | ------------- | ------------------------- |
| /14  | 18     | 255.252.0.0   | 2<sup>18</sup>-2 = 262142 |
| /15  | 17     | 255.254.0.0   | 2<sup>17</sup>-2 = 131070 |
| /16  | 16     | 255.255.0.0   | 2<sup>16</sup>-2 = 65534  |
| /17  | 15     | 255.255.128.0 | 2<sup>15</sup>-2 = 32766  |
| /18  | 14     | 255.255.192.0 | 2<sup>14</sup>-2 = 16382  |
| /19  | 13     | 255.255.224.0 | 2<sup>13</sup>-2 = 8190   |
| /20  | 12     | 255.255.240.0 | 2<sup>12</sup>-2 = 4094   |
| /21  | 11     | 255.255.248.0 | 2<sup>11</sup>-2 = 2046   |
| /22  | 10     | 255.255.252.0 | 2<sup>10</sup>-2 = 1022   |
| /23  | 9      | 255.255.254.0 | 2<sup>9</sup>-2 = 510     |
| /24  | 8      | 255.255.255.0 | 2<sup>8</sup>-2 = 254     |

## Entête IP v4

---

| Champs               | Descriptions                                                            |
| -------------------- | ----------------------------------------------------------------------- |
| Version              | 4 bits indiquant la version (4)                                         |
| Longueur de l'entête | 4 bits indiquant le nombre de mots de 4 octets composant l'entête       |
| TOS                  | 28 bits permettant d'activer la QOS                                     |
| Longueur totale      | 16 bits indiquant le nombre total d'octets du                           |
| Identification       | 16 bits identifiant les fragments d'un même paquet                      |
| Don't fragment       | 1 bit interdisant la fragmentation                                      |
| More fragments       | 1 bit indiquant que d'autres fragments suivent                          |
| Fragment offset      | 13 bits indiquant la position du fragment en nombre de mots de 8 octets |
| TTL                  | 8 bits indiquant la durée de vie d'un paquet                            |
| Protocole            | 8 bits indiquant le protocole de la couche supérieure (TCP, UDP, ICMP)  |
| Somme de contrôle    | 16 bits, calculée à partir de l'entête                                  |
| Somme de contrôle    | 16 bits, calculée à partir de l'entête                                  |
| @ source             | 32 bits                                                                 |
| @ destination        | 32 bits                                                                 |
| Options              | Security, Record route, Timestamp, Traceroute                           |
| Bourrage             | Entre 0 et 7 bits à 0 pour obtenir une entête multiple de 32 bits       |
