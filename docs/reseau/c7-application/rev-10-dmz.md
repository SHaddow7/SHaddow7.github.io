---
layout: default
title: DMZ
parent: 7 - Application
grand_parent: Réseaux
has_toc: true
nav_order: 10
---

# DMZ

## Principes

---

La **DMZ (zone démilitarisée)** est un sous-réseau qui se situe entre un réseau interne (LAN) et un réseau externe (Internet) et qui **permet de fournir des services à l'extérieur du réseau interne tout en assurant une protection contre les attaques de l'extérieur**. La DMZ est une **zone tampon entre le réseau interne et le réseau externe**.

## Fonctionnement

---

La DMZ est un réseau isolé physiquement ou logiquement du réseau interne de l'entreprise mais qui est accessible depuis Internet. Les machines dans la DMZ ont un accès limité au réseau interne mais peuvent fournir des services aux utilisateurs d'Internet. Les machines de la DMZ peuvent être des serveurs Web, des serveurs de messagerie électronique ou des serveurs de jeux en ligne. Les machines dans la DMZ doivent être configurées de manière à ne pas permettre l'accès au réseau interne.

## Avantages

---

- **Fournir des services à l'extérieur** tout en maintenant une séparation entre le réseau interne et le réseau externe.
- **Offrir une protection supplémentaire** contre les attaques en isolant les machines exposées depuis Internet.
- Pemettre de **mieux contrôler les accès depuis l'extérieur** en filtrant le trafic entrant et sortant.

## Inconvénients

---

- La DMZ nécessite une configuration et une maintenance supplémentaires.
- La DMZ peut être contournée par des attaquants qui réussissent à s'introduire dans la DMZ depuis Internet.

## Exemples d'utilisation

---

- Les **serveurs de messagerie** électronique sont souvent placés dans la DMZ pour permettre l'accès aux utilisateurs externes sans exposer le réseau interne.
- Les **serveurs Web** sont également placés dans la DMZ pour fournir un accès à l'extérieur sans exposer le réseau interne.
- Les **systèmes de sécurité** tels que les pare-feux, les VPN et les systèmes d'authentification sont également souvent placés dans la DMZ.
