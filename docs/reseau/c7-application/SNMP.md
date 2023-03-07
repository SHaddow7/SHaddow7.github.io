---
layout: default
title: SNMP
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
# nav_order: 0
---

# SNMP

## Définition

---

Le protocole SNMP (Simple Network Management Protocol) est un protocole de la couche application <b>utilisé pour gérer et surveiller les équipements réseau tels que les routeurs, les commutateurs, les serveurs et les ordinateurs</b>.

## Définition - (+ approfondi)

---

SNMP permet aux administrateurs réseau de surveiller et de configurer des équipements réseau à distance en utilisant un système de gestion SNMP.

SNMP utilise une architecture client-serveur dans laquelle un gestionnaire SNMP (client) interroge des agents SNMP (serveurs) pour obtenir des informations sur les équipements réseau.

Les informations récupérées par SNMP sont stockées dans une base de données de gestion d'informations SNMP (MIB) qui décrit les objets SNMP disponibles pour chaque équipement réseau.

Les commandes SNMP les plus courantes incluent GET (pour récupérer une valeur de la MIB), SET (pour configurer une valeur de la MIB) et TRAP (pour signaler un événement important).

SNMP utilise des versions différentes, notamment SNMPv1, SNMPv2 et SNMPv3, qui offrent différents niveaux de sécurité et de fonctionnalités.

## Principes de fonctionnement

---

1. Un administrateur réseau peut utiliser SNMP pour surveiller le trafic réseau sur un commutateur. Le gestionnaire SNMP interroge l'agent SNMP du commutateur pour récupérer des informations sur le trafic et les stocke dans une base de données de gestion d'informations SNMP. L'administrateur peut ensuite utiliser ces informations pour diagnostiquer et résoudre les problèmes de performance du réseau.

2. Un administrateur réseau peut utiliser SNMP pour surveiller l'état des serveurs dans un centre de données. Le gestionnaire SNMP interroge les agents SNMP sur les serveurs pour récupérer des informations sur l'utilisation des ressources, telles que la mémoire, le processeur et le disque. L'administrateur peut alors utiliser ces informations pour planifier la maintenance et les mises à jour du serveur.

3. Un développeur de logiciels peut utiliser SNMP pour intégrer la surveillance réseau dans son application. Par exemple, une application de supervision de réseau peut utiliser SNMP pour récupérer des informations sur l'état des équipements réseau et les afficher dans une interface utilisateur conviviale.
