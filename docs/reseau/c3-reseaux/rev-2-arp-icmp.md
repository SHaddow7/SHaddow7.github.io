---
layout: default
title: ARP ICMP
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 2
---

# ARP / ICMP

## Principes de l'ARP

---

Le protocole **ARP (Address Resolution Protocol)** **permet à un équipement de récupérer l'adresse MAC d'une machine dont l'adresse IP est connue et sur le même réseau local**.

1. L'émetteur vérifie son cache ARP. Si la recherche est fructueuse, il renvoie l'adresse MAC à la couche IP.
2. Sinon, l'émetteur envoie une requête ARP en broadcast sur le réseau local pour demander à qui appartient l'adresse IP.
3. La station qui reconnaît l'adresse IP comme étant la sienne doit répondre en envoyant la réponse ARP avec son adresse MAC. Elle met aussi à jour son cache avec les adresses IP et MAC de l'émetteur.
4. L'émetteur reçoit la réponse, met à jour son cache avec les adresses IP et MAC de la station et renvoie l'adresse MAC à la couche IP.

## Le cache ARP

---

Le cache ARP permet d'eviter l'envoie systématique de requête ARP quand on a communiqué récemment avec une machine.

| Systeme | commande                              |
| ------- | ------------------------------------- |
| Windows | arp -a                                |
| Linux   | ip neighbour show ; ip neigh s ; ip n |

Les informations sont conservées 2-3 minutes (10 minutes si l'adresse est réutilisée avant expiration du délai).

## Vidage du cache ARP

---

Il est possible de mettre dans le cache ARP des entrées statiques qui permettent de bloquer le fonctionnement du cache pour ces adresses. La résolution ARP sera toujours faite sans interroger le réseau car ces entrées ne périment pas.

## ARP Spoofing

---

L'**ARP Spoofing** consiste à **tromper une machine en associant une adresse IP à une adresse MAC différente** de la véritable. L'attaquant utilise des messages ARP modifiés pour faire croire à la victime que l'adresse IP de l'attaquant est associée à la carte réseau de la victime. Cela permet à l'attaquant de lire les paquets qui sont normalement destinés à la victime, et de les altérer ou de les rediriger.

## Principe du ICMP

---

Le protocole **ICMP (Internet Control Message Protocol)** **permet la gestion des erreurs et la signalisation des anomalies sur un réseau IP**. Le protocole ICMP est utilisé pour **fournir des informations sur le statut de la transmission**, telles que lorsqu'un datagramme ne peut pas atteindre sa destination, lorsqu'un routeur manque de mémoire pour retransmettre correctement le datagramme, ou lorsqu'un routeur décide d'utiliser une route alternative pour optimiser le trafic. La commande "ping" utilise également le protocole ICMP pour vérifier la transmission.

## MTU

---

Le **MTU (Maximum Transmission Unit)** est la **taille maximale d'un datagramme IP (limitation physique) qui peut être transmis sur un réseau sans être fragmenté**. Cela dépend des spécifications de chaque réseau. Il sert également de base pour la négociation du Maximum Segment Size (MSS) dans l'établissement d'une connexion TCP.

- **Ethernet normal** : 1500 octets
- **Ethernet jumbo** : jusqu’à 9000
- **PPPoE** : 1492 octets
- **ADSL** : 1468 octets

## MSS

---

Le **MSS (Maximum Segment Size)** est la **taille maximale des données contenues dans un segment TCP**. Il dépend du MTU du réseau sur lequel les données sont transmises et peut être inférieur à celui-ci. Le MSS est utilisé pour **optimiser les performances de transmission** en s'assurant que les segments TCP ne dépassent pas la taille maximale gérable par le réseau.

## Commande

---

```bash
#  Obtenir le Path MTU (PMTU) qui peut varier dans le temps, à la suite d'un reroutage par exemple.
#  Il peut également être asymétrique.
tracepath <destination>
```
