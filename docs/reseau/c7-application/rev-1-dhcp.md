---
layout: default
title: DHCP
parent: 7 - Application
grand_parent: Réseaux
has_toc: true
nav_order: 1
---

# DHCP (Dynamic Host Configuration Protocol)

## Principes

---

Le **DHCP (Dynamic Host Configuration Protocol)** est un protocole de la couche application qui **permet l'attribution automatique de la configuration réseau au démarrage d'une machine**. La configuration IP comprend des informations telles que l'**adresse IP**, le **masque de sous-réseau**, la **passerelle par défaut** et les **serveurs DNS**.

Le DHCP est essentiel pour la gestion efficace des adresses IP sur les réseaux. Sans le DHCP, les administrateurs réseau devraient attribuer manuellement des adresses IP à chaque équipement de réseau, ce qui serait fastidieux et peu pratique.

## Messages DHCP

---

- **DHCP DISCOVER** : le client **émet une requête DHCP** de demande d'adresse IP en broadcast uniquement sur le réseau local.
- **DHCP OFFER** : un serveur DHCP à l'écoute sur le port UDP 67 répond en **offrant une adresse IP disponible**.
- **DHCP REQUEST** : le client **sélectionne la 1<sup>ère</sup> réponse reçue** et **demande l'utilisation de cette adresse** au serveur DHCP. Ce broadcast permet aussi de prévenir les serveurs DHCP non choisis afin qu'ils puissent libérer les adresses proposées.
- **DHCP ACK** : le serveur DHCP **accuse réception et accorde l'adresse IP** pour une durée déterminée (bail). Ce message peut aussi contenir des paramètres de configuration supplémentaires (passerelle, serveur DNS...)

## DHCP National

---

{: .note}

> Le DHCP National est un service de distribution d'adresses IP pour les réseaux du secteur public en France. Ce service est géré par l'Agence Nationale des Infrastructures Numériques et des Fréquences (ANINF), anciennement appelée Agence du Numérique _(ChatGPT)_.

## DHCP Relay

---

Le DHCP Realy **permet de joindre le serveur distant comme s'il était placé dans le réseau local**. Il est important de noter que **le coeur de réseau doit être configuré en "Relay DHCP"** pour prendre en charge les requêtes DHCP du réseau local et les envoyer au serveur distant.

## Fonctionnement

---

1. Lorsqu’un nouvel équipement de réseau se connecte à un réseau, il envoie une demande DHCP pour recevoir une configuration IP.

2. Le serveur DHCP répond à la demande en envoyant une offre DHCP, qui contient la configuration IP proposée pour l’équipement de réseau. Si l’équipement de réseau accepte l’offre DHCP, il envoie une demande DHCP de confirmation au serveur DHCP pour finaliser la configuration IP.

3. L’équipement de réseau utilise ensuite la configuration IP pour établir des connexions avec d’autres équipements de réseau sur le réseau, permettant à l’utilisateur d’accéder aux ressources et services disponibles.
