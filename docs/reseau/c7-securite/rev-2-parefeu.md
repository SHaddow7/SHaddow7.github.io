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

Le pare-feu (firewall en anglais) est un système de sécurité informatique qui permet de filtrer les connexions réseau entrantes et sortantes pour empêcher les accès non autorisés à un réseau.
Il peut être implémenté sous forme matérielle (boîtier dédié) ou logicielle (application installée sur un serveur).

Le pare-feu est un élément essentiel de la sécurité informatique et est utilisé dans de nombreuses organisations pour protéger les réseaux contre les attaques extérieures. Cependant, il est important de noter qu'un pare-feu ne peut pas garantir une protection complète contre toutes les menaces, il doit donc être combiné à d'autres mesures de sécurité, telles que des antivirus, des systèmes de détection d'intrusion, etc.

## Fonctionnalités

---

Les fonctionnalités principales d'un pare-feu sont les suivantes :

- **Filtrage des paquets** : le pare-feu examine chaque paquet qui entre ou sort du réseau et les autorise ou les bloque en fonction des règles de sécurité préalablement définies.
- **Contrôle d'accès** : le pare-feu peut être configuré pour n'autoriser que les connexions provenant de certaines adresses IP ou de certains ports.
- **Protection contre les attaques de déni de service (DoS)** : le pare-feu peut être configuré pour bloquer le trafic provenant de sources malveillantes qui tentent de surcharger le réseau avec des requêtes excessives.
- **Journalisation** : le pare-feu enregistre les informations sur les connexions réseau entrantes et sortantes, ce qui permet de surveiller et d'analyser le trafic réseau.

## Types

Il existe plusieurs types de pare-feu, notamment :

- **Pare-feu de filtrage de paquets** : il analyse les paquets et les bloque ou les autorise en fonction des règles de sécurité.
- **Pare-feu de niveau applicatif** : il analyse le trafic de la couche applicative et peut bloquer ou autoriser les connexions en fonction du contenu de la requête ou de la réponse.
- **Pare-feu de nouvelle génération** : il combine plusieurs techniques de sécurité (pare-feu de filtrage de paquets, pare-feu de niveau applicatif, inspection SSL/TLS, prévention des intrusions, etc.) pour offrir une protection plus complète contre les menaces informatiques.
