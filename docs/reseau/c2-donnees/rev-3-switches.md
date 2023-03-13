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

## Fonctionnement des commutateurs - <span class="culture-gen">_Culture générale_</span>

---

Le fonctionnement des commutateurs Ethernet est basé sur l'apprentissage des adresses MAC des équipements connectés sur chaque port du commutateur. Lorsqu'un paquet arrive sur un port, le commutateur examine l'adresse MAC de destination pour déterminer sur quel port il doit être transmis. Si le port de destination est connu, le commutateur transmet le paquet uniquement sur ce port. Sinon, le commutateur diffuse le paquet sur tous les ports, sauf celui sur lequel il a été reçu. Cette diffusion permet de mettre à jour la table d'adresses MAC du commutateur et ainsi d'apprendre sur quel port se trouve l'équipement de destination.

Le fonctionnement des commutateurs gérés peut être plus complexe car ils offrent des fonctionnalités avancées telles que la gestion à distance, la surveillance de la bande passante, le contrôle de flux, la sécurité avancée, la gestion VLAN et la QoS (Qualité de Service).

## Types de commutateurs - <span class="culture-gen">_Culture générale_</span>

---

### Commutateurs non gérés

Les **commutateurs non gérés** sont des commutateurs simples et économiques qui ne nécessitent aucune configuration. Ils sont souvent utilisés dans les petites entreprises ou les réseaux domestiques. Ils ne disposent pas de fonctionnalités avancées telles que la gestion à distance ou la surveillance du trafic.

### Commutateurs gérés

Les **commutateurs gérés** offrent des fonctionnalités de gestion avancées, telles que la surveillance du trafic et la configuration à distance, la qualité de service (QoS) et la sécurité. Ils sont généralement utilisés dans les grandes entreprises et les réseaux complexes.

### Commutateurs intelligents

Les **commutateurs intelligents** permet d'offrir un niveau intermédiaire de fonctionnalités entre les commutateurs non gérés et les commutateurs gérés. Ils offrent généralement des fonctionnalités de gestion de base, telles que la surveillance, la configuration à distance et la gestion du trafic en temps réel, ainsi que des fonctionnalités de QoS et de sécurité de base. Ils sont généralement utilisés dans les petites et moyennes entreprises.

## Caractéristiques des commutateurs - <span class="culture-gen">_Culture générale_</span>

---

Voici une liste non exhaustive des caractéristiques des commutateurs :

- **Nombre de ports** : Le nombre de ports disponibles sur le commutateur.
- **Vitesse de transfert** : La vitesse à laquelle les données peuvent être transférées entre les ports du commutateur.
- **Bande passante** : La quantité de données pouvant être transférées en même temps sur le commutateur
- **Gestion** : Le niveau de gestion du commutateur, c'est-à-dire s'il est géré ou non géré.
- **Fonctionnalités** : Les fonctionnalités supplémentaires telles que la QoS, la sécurité, la surveillance du trafic, la redondance, etc.
- **Support VLAN** : La prise en charge de la virtualisation des réseaux locaux (VLAN) qui permettent de segmenter un réseau en plusieurs sous-réseaux.
- **Support STP** : La prise en charge du protocole Spanning Tree (STP) qui permet de gérer les boucles dans un réseau.
- **Support de protocoles** : La prise en charge de différents protocoles de réseau tels que TCP/IP, IPX/SPX, AppleTalk, etc.
- **etc**

## Exemple : Switchs HP-3Com

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
