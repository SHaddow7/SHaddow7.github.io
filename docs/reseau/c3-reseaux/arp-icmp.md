---
layout: default
title: ARP ICMP
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
---

# Configuration sur linux

# Couche 3 - ARP / ICMP

## Couche 3 - Internet Protocol - ARP

• Principes
• ARP (Address Resolution Protocol) permet à un équipement de récupérer l'adresse MAC d'une machine dont l'adresse IP est connue et sur le même réseau local.

1. L'émetteur vérifie son cache ARP. Si la recherche est fructueuse, il renvoie l'adresse MAC à la couche IP.
2. Sinon, l'émetteur envoie une requête ARP en broadcast sur le réseau local pour demander à qui appartient l'adresse IP.
3. La station qui reconnaît l'adresse IP comme étant la sienne doit répondre en envoyant la réponse ARP avec son adresse MAC.
   Elle met aussi à jour son cache avec les adresses IP et MAC de l'émetteur.
4. L'émetteur reçoit la réponse, met à jour son cache avec les adresses IP et MAC de la station et renvoie l'adresse MAC à la couche IP.

Le cache ARP
• Évite d'envoyer systématiquement une requête ARP quand on a communiqué récemment avec une machine.

| Systeme | commande                              |
| ------- | ------------------------------------- |
| Windows | arp -a                                |
| Linux   | ip neighbour show ; ip neigh s ; ip n |

• Les informations sont conservées 2-3 minutes (10 minutes si l'adresse est réutilisée avant expiration du délai).

## Vidage du cache ARP

• Vide le cache (pour expérimentation)
• Il est possible de mettre dans le cache ARP des entrées statiques qui
permettent de bloquer le fonctionnement du cache pour ces adresses. La
résolution ARP sera toujours faite sans interroger le réseau car ces
entrées ne périment pas.

## ARP Spoofing

Internet Protocol - ICMP
• Gestion des erreurs et signalisations du réseau
• Lorsqu'un datagramme ne peut pas atteindre sa destination
• Lorsqu'un routeur manque de réserve de mémoire pour retransmettre
correctement le datagramme
• Lorsque le routeur décide d'atteindre l'hôte destinataire via une route
alternative pour optimiser le trafic.
• Vérification de la transmission
• Utilisé par la commande "ping"

MTU et MSS
• Le Maximum Transmission Unit (MTU) diffère en fonction du
médium :
• Ethernet normal : 1500 octets
• Ethernet jumbo : jusqu’à 9000
• PPPoE : 1492 octets
• ADSL : 1468 octets
• C’est une limitation physique, impossible de passer outre.
• Le MTU sert de base pour la négociation du Maximum Segment
Size (MSS) dans l'établissement d'une connexion TCP.
• Sous Linux, on peut utiliser la commande « tracepath
<destination> » pour obtenir le Path MTU (PMTU) qui peut varier
dans le temps, à la suite d'un reroutage par exemple. Il peut
également être asymétrique.

Fragmentation
• Pour passer dans ces limites, les paquets IP plus grand sont
divisés en fragments.
• Chaque fragment contient deux informations dans l’entête :
• son emplacement dans le paquet → Déplacement (Fragment Offset)
• s’il est le dernier fragment → MF (More fragment)

Exemple de fragmentation
• Paquet d’origine :
• Fragments
Identification Longueur DF
(Don’t Fragment)
MF
(More Fragments)
Fragment
Offset
354 5140 0 0 0
Identification Longueur DF
(Don’t Fragment)
MF
(More Fragments)
Fragment
Offset
345 1500 0 1 0
345 1500 0 1 185
345 1500 0 1 370
345 700 0 0 555
