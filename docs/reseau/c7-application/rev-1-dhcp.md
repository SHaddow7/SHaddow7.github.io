---
layout: default
title: DHCP
parent: 7 - Couche
grand_parent: Réseaux
has_toc: true
---

# DHCP (Dynamic Host Configuration Protocol)

## Définition

---

Le DHCP (Dynamic Host Configuration Protocol) est un protocole de la couche application qui <b>permet aux équipements de réseau de recevoir une configuration IP automatiquement lorsqu'ils se connectent à un réseau</b>. La configuration IP comprend des informations telles que l'adresse IP, le masque de sous-réseau, la passerelle par défaut et les serveurs DNS.

## Définition - (+ approfondi)

---

Le DHCP utilise un modèle client-serveur, où les équipements de réseau agissent en tant que clients et les serveurs DHCP agissent en tant que serveurs. Lorsqu'un équipement de réseau se connecte à un réseau, il envoie une demande DHCP pour recevoir une configuration IP.

Le serveur DHCP répond à la demande en envoyant une offre DHCP, qui contient la configuration IP proposée pour l'équipement de réseau. Si l'équipement de réseau accepte l'offre DHCP, il envoie une demande DHCP de confirmation au serveur DHCP pour finaliser la configuration IP.

Le DHCP utilise des baux DHCP pour attribuer les adresses IP aux équipements de réseau. Les baux DHCP sont des durées de validité de l'attribution de l'adresse IP. Après l'expiration du bail DHCP, l'équipement de réseau doit renouveler la configuration IP en renvoyant une demande DHCP.

Le DHCP est essentiel pour la gestion efficace des adresses IP sur les réseaux. Sans le DHCP, les administrateurs réseau devraient attribuer manuellement des adresses IP à chaque équipement de réseau, ce qui serait fastidieux et peu pratique.

## Principes de fonctionnement

---

1. Lorsqu'un nouvel équipement de réseau se connecte à un réseau, il envoie une demande DHCP pour recevoir une configuration IP.

2. Le serveur DHCP répond à la demande en envoyant une offre DHCP, qui contient la configuration IP proposée pour l'équipement de réseau. Si l'équipement de réseau accepte l'offre DHCP, il envoie une demande DHCP de confirmation au serveur DHCP pour finaliser la configuration IP.

3. L'équipement de réseau utilise ensuite la configuration IP pour établir des connexions avec d'autres équipements de réseau sur le réseau, permettant à l'utilisateur d'accéder aux ressources et services disponibles.

Principes
• Le DHCP (Dynamic Host Configuration Protocol) permet l'attribution automatique
de la configuration réseau au démarrage d'une machine.
• DHCP DISCOVER : Le client émet une requête DHCP de demande d'adresse
IP en broadcast uniquement sur le réseau local.
• DHCP OFFER : Un serveur DHCP à l'écoute sur le port UDP 67 répond en
offrant une adresse IP disponible.
• DHCP REQUEST :le client sélectionne la 1ère réponse reçue et demande
l'utilisation de cette adresse au serveur DHCP. Ce broadcast permet aussi de
prévenir les serveurs DHCP non choisis afin qu'ils puissent libérer les adresses
proposées.
• DHCP ACK : Le serveur DHCP accuse réception et accorde l'adresse IP pour
une durée déterminée (bail). Ce message peut aussi contenir des paramètres
de configuration supplémentaires (passerelle, serveur DNS...)

Attribution des adresses à la DGFiP
• En "dur" pour tous les serveurs et les imprimantes
• Attribuées par un serveur DHCP National pour tous les postes.
Le DHCP National est nécessaire pour le
fonctionnement de tous les postes en Windows 10.

DHCP National
• Le protocole DHCP ne peut fonctionner que sur un réseau local !!!
• Le serveur DHCP National n'est pas sur le réseau local, comment peut-il
attribuer les adresses ?
• DHCP Relay
• Permet de joindre le serveur distant comme s'il était placé dans le réseau
local.
• Le coeur de réseau doit être configuré en "Relay DHCP" pour prendre en
charge les requêtes DHCP du réseau local et les envoyer au serveur
distant.
