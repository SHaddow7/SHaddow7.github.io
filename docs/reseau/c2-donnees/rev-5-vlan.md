---
layout: default
title: VLAN
parent: 2 - Liaison Données
grand_parent: Réseaux
has_toc: false
nav_order: 5
---

# Virtual Local Area Network - VLAN

## Principes

---

Les VLAN (Virtual Local Area Network) sont des réseaux virtuels qui **permettent de segmenter un réseau physique en sous-réseaux logiques**. Cela permet de **diviser un réseau physique en plusieurs réseaux logiques indépendants**, chacun avec sa propre adresse IP et sa propre table de routage. Les VLAN permettent de **séparer les trafics réseau** de différentes parties de l'entreprise, d'**appliquer des stratégies de sécurité** spécifiques et de **rationaliser la gestion du réseau**.

Les VLANs sont utilisés pour améliorer la sécurité du réseau en limitant la propagation des données, pour améliorer l'utilisation de la bande passante en limitant les collisions de données, et pour améliorer la flexibilité en permettant de déplacer des dispositifs réseau entre différents sous-réseaux sans changer leur adresse IP.

## Le TAG

---

Le TAG (ou étiquette) est une **information ajoutée à un paquet réseau pour identifier à quel VLAN ce paquet appartient**. Le tag est ajouté à l'en-tête de la trame Ethernet par un commutateur et est utilisé pour transmettre les paquets sur le bon VLAN. Les commutateurs peuvent effectuer une lecture du tag sur les paquets entrants pour déterminer sur quel VLAN ce paquet devrait être transmis, ce qui permet de segmenter le trafic sur le réseau.

## Liaison Trunk

---

Une liaison Trunk (ou Trunking) est une **méthode utilisée pour connecter des commutateurs ensemble en utilisant un seul port pour transmettre des données de plusieurs VLANs**. Elle permet de transmettre les données de plusieurs VLANs sur un seul câble physique, en utilisant une technique de marquage VLAN, comme le protocole IEEE 802.1q. Les liaisons Trunk permettent de connecter des commutateurs ensemble pour créer des VLANs étendus sur plusieurs commutateurs.

Généralement configurés avec le protocole IEEE 802.1Q, les trunks VLAN **ajoutent un tag (ou en-tête) à chaque paquet pour indiquer à quel VLAN il appartient**. Cela permet aux équipements de communication de savoir à quel VLAN il appartient. Cela permet aux équipements de communication de savoir à quel VLAN un paquet appartient et de le livrer à la destination appropriée.
