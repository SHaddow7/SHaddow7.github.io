---
layout: default
title: FTP
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
# nav_order: 0
---

# FTP

## Définition

---

Le FTP (File Transfer Protocol) est un protocole de la couche application qui <b>permet de transférer des fichiers entre des équipements de réseau via Internet</b>. Il est l'un des protocoles les plus couramment utilisés pour le transfert de fichiers sur Internet.

## Définition - (+ approfondi)

---

Le FTP utilise un modèle client-serveur, où les équipements de réseau agissent en tant que clients et les serveurs FTP agissent en tant que serveurs. Les clients FTP se connectent aux serveurs FTP pour accéder aux fichiers disponibles sur le serveur FTP ou pour transférer des fichiers vers le serveur FTP.

Le FTP utilise deux canaux de communication pour le transfert de fichiers : le canal de commande et le canal de données. Le canal de commande est utilisé pour l'échange de commandes FTP entre le client FTP et le serveur FTP, tandis que le canal de données est utilisé pour le transfert des fichiers.

Les commandes FTP peuvent être classées en deux catégories : les commandes de contrôle et les commandes de données. Les commandes de contrôle sont utilisées pour gérer la connexion FTP entre le client FTP et le serveur FTP, tandis que les commandes de données sont utilisées pour gérer le transfert de fichiers.

Le FTP utilise deux modes de transfert de fichiers : le mode ASCII et le mode binaire. Le mode ASCII est utilisé pour les fichiers texte, tandis que le mode binaire est utilisé pour les fichiers non-texte.
Le FTP peut utiliser différents types d'authentification pour assurer la sécurité du transfert de fichiers, tels que l'authentification par mot de passe et l'authentification par clé publique.

## Principes de fonctionnement

---

1. Lorsqu'un utilisateur souhaite transférer un fichier vers un serveur FTP distant, il se connecte d'abord au serveur FTP en utilisant un client FTP tel que FileZilla.

2. Une fois connecté, l'utilisateur peut naviguer dans les fichiers disponibles sur le serveur FTP et sélectionner le fichier qu'il souhaite transférer.

3. L'utilisateur peut alors transférer le fichier vers le serveur FTP en utilisant des commandes FTP telles que "put" ou "send".

4. Une fois le transfert de fichier terminé, le serveur FTP renvoie un message de confirmation au client FTP.

5. De même, lorsqu'un utilisateur souhaite télécharger un fichier à partir d'un serveur FTP distant, il peut naviguer dans les fichiers disponibles sur le serveur FTP et sélectionner le fichier qu'il souhaite télécharger.

6. L'utilisateur peut alors télécharger le fichier à partir du serveur FTP en utilisant des commandes FTP telles que "get" ou "recv".

7. Une fois le téléchargement terminé, le serveur FTP renvoie un message de confirmation au client FTP.
