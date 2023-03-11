---
layout: default
title: DNS
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
nav_order: 2
---

# DNS (Domain Name System)

## Principes

---

Le **DNS (Domain Name System)** est (base de données distribuée) un protocole de la couche application qui **permet de traduire les noms de domaine en adresses IP**. Les noms de domaine sont des noms faciles à retenir pour les utilisateurs, tels que www.google.com, tandis que les adresses IP sont des nombres utilisés pour identifier les équipements de réseau sur Internet, tels que 172.217.5.174.

Le système est **basé sur une hiérarchie de noms de domaines** partant d'une racine représentée par un point (.), qui n'apparait que dans les configuration du serveur DNS, pas dans l'usage courant. On trouve ensuite au **1er niveau** les **TLD (Top Level Domains)** qui sont gérés par l'ICANN. À partir de ces TLD, on va trouver les domaines inférieurs et sous-domaines dont la gestion est décentralisée. De plus, un système de réplication assure la fiabilité, tandis que des caches augmentent la performance du système.

## Serveurs racines

---

Les **serveurs DNS racines** gèrent les délégations pour les noms de domaine de premier niveau (TLD). Il existe 13 groupes de serveurs racines, pour des raisons de fiabilité et de performance. Chaque groupe est un ensemble de serveurs DNS. En 2022, sont opérationnels **1548 serveurs DNS racines**.

## TLD (Top Level Domain) ou Domaine de plus haut niveau

---

- **TLD spéciaux** : .arpa, .ip6, .onion, ...
- **TLD nationaux** : .fr, .re, .gp, .mq, .gw, .gb, .it, .de, .us, ...
- **TLD génériques** : (Pas de notion géographiques)
- **TLD ouverts** : .com, .net, .org, .info, ...
- **TLD restreint**s : .biz, .name, .pro, ...
- **TLD parrainés** : .edu, .gov, .mil, ...
- **TLD réservés** : .example, .invalid, .localhost, .test, ...

## Les DNS connus

---

### DNS des opérateurs français

| Opérateur | Principal      | Secondaire     | Tertiaire     |
| --------- | -------------- | -------------- | ------------- |
| Bouygues  | 194.158.122.10 | 194.158.122.15 |               |
| Free      | 212.27.40.240  | 212.27.40.241  |               |
| SFR       | 109.0.66.10    | 109.0.66.20    |               |
| Orange    | 80.10.246.2    | 80.10.246.129  |               |
| OVH       | 91.121.61.147  | 87.98.149.171  | 91.121.58.181 |

### DNS publiques connus

| Opérateur  | Principal      | Secondaire     |
| ---------- | -------------- | -------------- |
| Google     | 8.8.8.8        | 8.8.4.4        |
| Cloudflare | 1.1.1.1        | 1.0.0.1        |
| OpenDNS    | 208.67.222.222 | 208.67.220.220 |

## Fonctionnement

---

1. Lorsqu'un utilisateur entre un nom de domaine dans son navigateur, le navigateur envoie une requête DNS à un serveur DNS local ou à un serveur DNS de niveau supérieur.

2. Le serveur DNS répond à la requête en renvoyant l'adresse IP associée au nom de domaine. Si le serveur DNS ne dispose pas de l'adresse IP pour le nom de domaine, il renvoie une référence à un autre serveur DNS, qui peut résoudre la requête à un niveau plus bas dans la hiérarchie de domaines.

3. Le navigateur utilise ensuite l'adresse IP pour établir une connexion avec le serveur Web associé au nom de domaine, permettant à l'utilisateur d'accéder au site Web.
