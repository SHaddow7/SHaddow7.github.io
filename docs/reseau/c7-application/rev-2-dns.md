---
layout: default
title: DNS
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
# nav_order: 0
---

# DNS

## Définition

---

Le DNS (Domain Name System) est un protocole de la couche application qui <b>permet de traduire les noms de domaine en adresses IP</b>. Les noms de domaine sont des noms faciles à retenir pour les utilisateurs, tels que www.google.com, tandis que les adresses IP sont des nombres utilisés pour identifier les équipements de réseau sur Internet, tels que 172.217.5.174.

## Définition - (+ approfondi)

---

Le DNS est un système distribué et hiérarchique qui utilise des serveurs DNS pour répondre aux requêtes des équipements de réseau. Les serveurs DNS sont organisés en une structure hiérarchique de domaines, où chaque domaine est responsable de la résolution des noms de domaine pour un sous-ensemble d'équipements de réseau.

Le processus de résolution DNS commence par la requête d'un équipement de réseau pour un nom de domaine. L'équipement de réseau envoie une requête DNS à un serveur DNS local ou à un serveur DNS de niveau supérieur, en utilisant le protocole UDP ou TCP.

Le serveur DNS répond à la requête en renvoyant l'adresse IP associée au nom de domaine. Si le serveur DNS ne dispose pas de l'adresse IP pour le nom de domaine, il renvoie une référence à un autre serveur DNS, qui peut résoudre la requête à un niveau plus bas dans la hiérarchie de domaines.

Le DNS utilise des enregistrements DNS pour stocker les informations de résolution des noms de domaine. Les enregistrements DNS contiennent des informations telles que l'adresse IP associée à un nom de domaine, le serveur de messagerie associé à un domaine de messagerie, et le serveur de nom associé à un domaine.

Le DNS est essentiel pour la navigation sur Internet et la communication entre les équipements de réseau. Sans le DNS, les utilisateurs devraient utiliser des adresses IP pour accéder aux sites Web, ce qui serait difficile à retenir et peu pratique.

## Principes de fonctionnement

---

1. Lorsqu'un utilisateur entre un nom de domaine dans son navigateur, le navigateur envoie une requête DNS à un serveur DNS local ou à un serveur DNS de niveau supérieur.

2. Le serveur DNS répond à la requête en renvoyant l'adresse IP associée au nom de domaine. Si le serveur DNS ne dispose pas de l'adresse IP pour le nom de domaine, il renvoie une référence à un autre serveur DNS, qui peut résoudre la requête à un niveau plus bas dans la hiérarchie de domaines.

3. Le navigateur utilise ensuite l'adresse IP pour établir une connexion avec le serveur Web associé au nom de domaine, permettant à l'utilisateur d'accéder au site Web.
