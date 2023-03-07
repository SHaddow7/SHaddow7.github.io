---
layout: default
title: Parefeu
parent: 7 - Couche Sécurité
grand_parent: Réseaux
has_toc: true
nav_order: 2
---

# Parefeu

## Principes

---

Un pare-feu (firewall en anglais) est un dispositif de sécurité informatique qui **permet de filtrer le trafic réseau entrant et sortant d'un réseau privé en se basant sur des règles de sécurité prédéfinies**. Son but est de protéger le réseau des accès non autorisés et des attaques malveillantes en bloquant les connexions qui ne respectent pas les règles définies.

## Fonctionnement

---

Le pare-feu est placé entre le réseau privé et le réseau public (Internet). Il analyse le trafic réseau qui passe à travers lui et applique les règles de sécurité définies pour déterminer si une connexion doit être autorisée ou bloquée. Les règles de sécurité sont basées sur des critères tels que l'adresse IP, le port, le protocole, etc. Les pare-feu peuvent être configurés pour permettre uniquement le trafic entrant et sortant spécifique à une application, un protocole ou un port.

## Avantages

---

- **Sécurité** : Le pare-feu permet de sécuriser le réseau en bloquant les connexions non autorisées et les attaques malveillantes.
- **Contrôle** : Les règles de sécurité du pare-feu permettent de contrôler le trafic réseau entrant et sortant du réseau privé.
- **Confidentialité** : Les pare-feu peuvent être utilisés pour masquer les adresses IP des ordinateurs du réseau privé pour améliorer la confidentialité.

## Inconvénients

---

- **Complexité** : La configuration d'un pare-feu peut être complexe et nécessite des connaissances en sécurité informatique.
- **Coût** : Les pare-feu professionnels peuvent être coûteux, en particulier pour les petites entreprises.

## Fonctionnalités

---

Les fonctionnalités principales d'un pare-feu sont les suivantes :

- **Filtrage des paquets** : le pare-feu examine chaque paquet qui entre ou sort du réseau et les autorise ou les bloque en fonction des règles de sécurité préalablement définies.
- **Contrôle d'accès** : le pare-feu peut être configuré pour n'autoriser que les connexions provenant de certaines adresses IP ou de certains ports.
- **Protection contre les attaques de déni de service (DoS)** : le pare-feu peut être configuré pour bloquer le trafic provenant de sources malveillantes qui tentent de surcharger le réseau avec des requêtes excessives.
- **Journalisation** : le pare-feu enregistre les informations sur les connexions réseau entrantes et sortantes, ce qui permet de surveiller et d'analyser le trafic réseau.

## Types

---

Il existe plusieurs types de pare-feu, notamment :

- **Pare-feu de filtrage de paquets** : il analyse les paquets et les bloque ou les autorise en fonction des règles de sécurité.
- **Pare-feu de niveau applicatif** : il analyse le trafic de la couche applicative et peut bloquer ou autoriser les connexions en fonction du contenu de la requête ou de la réponse.
- **Pare-feu de nouvelle génération** : il combine plusieurs techniques de sécurité (pare-feu de filtrage de paquets, pare-feu de niveau applicatif, inspection SSL/TLS, prévention des intrusions, etc.) pour offrir une protection plus complète contre les menaces informatiques.

## Exemples d'utilisation

---

- Protection des réseaux d'entreprise : Les pare-feu sont souvent utilisés pour protéger les réseaux d'entreprise contre les attaques de pirates informatiques.
- Protection des serveurs web : Les pare-feu peuvent être utilisés pour protéger les serveurs web contre les attaques de déni de service (DDoS).
- Protection des réseaux sans fil : Les pare-feu peuvent être utilisés pour protéger les réseaux sans fil des intrusions et des attaques

## Exemples

---

- NetFilter (iptables, nftables), le pare-feu de Linux
- Shorewall (basé sur netfilter)
- Check Point Next Generation Firewalls (NGFWs)
- Sophos Firewall.
- FortiGate.
- WatchGuard Network Security.
- SonicWall.
- Zscaler Internet Access.
- Avast.
