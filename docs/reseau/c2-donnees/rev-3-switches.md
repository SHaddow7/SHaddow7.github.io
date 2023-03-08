---
layout: default
title: Commutateurs
parent: 2 - Liaison Données
grand_parent: Réseaux
has_toc: false
nav_order: 3
---

# Commutateurs

## Principes

---

Un commutateur est un équipement de réseau qui **permet de connecter plusieurs dispositifs ensemble dans un réseau local**. Il permet aux données de circuler entre ces dispositifs en utilisant des ports d'entrée et de sortie. Il permet également de filtrer et de transmettre les données à destination des dispositifs connectés, en **utilisant l'adresse MAC de chaque dispositif**.

## Switchs HP-3Com

---

#### TAG

4 octets ajoutés à la trame Ethernet afin d'y indiquer l'appartenance à un VLAN (802.1Q)

#### VLAN natif

Vlan par défaut défini sur un switch (le Vlan 1 est le Vlan natif habituellement)

#### PVID

le Port Vlan ID permet de définir un VLAN par défaut différent du VLAN natif sur un certain port. Utile en cas de trunk, c'est ce N° de Vlan qui sera affecté aux trames non tagguées arrivant sur le port.

#### Port ACCESS :

- Type de port à utiliser pour le branchement d'un matériel non "Vlan-Aware" (station de travail, serveur, etc...).
- En entrée sur le port :
  - Si la trame est Untagged, la trame est alors tagged avec le PVID du port.
  - Si la trame est Tagged, elle ne passera que si elle est tagged avec le PVID du port (droped sinon).
- En sortie vers la station :
  - Le switch ne laissera passer que les trames faisant partie du VLAN correspondant au PVID du port, tout en retirant le Tag.
- Les autres trames seront droped.

#### Port TRUNK

- A utiliser pour relier des équipements "Vlan-Aware" tels que les switchs ou routeurs.
- Ce type de port permet de faire circuler des trames issues de Vlan différents sur le même brin, et de les différencier à l'arrivée.
- Les trames seront Tagged, hormis celles du Vlan par défaut défini par le PVID du port qui seront non tagged (dans ce cas, si une trame arrive Tagged avec le Vlan par défaut, le tag est retiré).

#### Port HYBRID :

Identique au port Trunk, mais laisse passer également les trames non tagged de plusieurs VLAN.

#### EDGED port :

Qualification d'un port au niveau du spanning tree pour accélérer le recalcul du schéma. Seuls les ports qui ne sont pas reliés à un commutateur peuvent être définis en "edge" et basculer immédiatement en état "forwarding".
