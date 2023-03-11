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

• Principes
• Le protocole FTP (File Transfert Protocol) permet de copier les fichiers
d'une machine à une autre.
• Deux canaux sont mis en oeuvre :
• Le canal de commande (port 21).
• Le canal de données (port 20).
•
À Noter : Le protocole FTP tombe en désuétude. Il a été retiré des
navigateurs courants en 2021.
Il reste cependant très utilisé à la DGFiP (ftp://ftp.oc.dgfip), il faut donc
maintenant utiliser l'Explorateur Windows pour accéder à ces sites.

FTP en mode actif
• La machine contacte le serveur pour lui demander un fichier
• Le serveur crée le canal de données :
Inconvénient : les pare-feux ne laissent pas passer les communications
entrantes pour des raisons de sécurité évidentes.

FTP en mode passif
• La machine contacte le serveur et lui envoie une commande PASV.
• Le serveur répond en annonçant l'IP et le port à contacter pour les
données.
• Le machine crée le canal de données vers le serveur :
Avantage : C'est le client qui contacte le serveur dans tous les cas,
donc les parefeux laissent passer.
• La commande PASV envoyée par le client demande au serveur de
basculer en mode passif
• Le N° du port dynamique du serveur à la place du port N° 21 est donné
sous la forme "165,27" dans l'exemple ci-dessous. Il faut multiplier 165
par 256 et y ajouter 27 pour obtenir le N° du port sur le serveur, soit 42267.

Sécurité
• Le transfert des données ainsi que du nom et du mot de passe est
réalisé en clair.
• Lorsque l'on souhaite renforcer la sécurité, il faut utiliser la version FTPS
qui utilise SSL et un certificat.
• Pour le transfert de fichiers, on préfère maintenant utiliser le HTTPS ou
des protcoles plus fiables tels que SFTP ou SCP.
• Attention : Ne confondez pas FTPS (Le protocole FTP avec une couche
SSL) et SFTP qui est un protocole différent, basé sur SSH.
