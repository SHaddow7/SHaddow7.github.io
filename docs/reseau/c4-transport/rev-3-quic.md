---
layout: default
title: QUIC
parent: 4 - Transport
grand_parent: Réseaux
has_toc: false
nav_order: 3
---

# Quick UDP Internet Connections (QUIC)

## Principes

---

QUIC (Quick UDP Internet Connections) est un protocole de transport rapide et sécurisé conçu pour remplacer TCP. Il a été développé par Google et est intégré à la plupart des navigateurs web actuels. Les principes fondamentaux de QUIC incluent :

Connexion rapide et fiabilité : QUIC utilise un ID de connexion unique pour établir une session, ce qui permet une connexion plus rapide et une récupération plus facile en cas de perte de paquets.

Encryptage de bout en bout : QUIC utilise un encryptage de bout en bout pour protéger les données des utilisateurs contre la surveillance et la manipulation.

Gestion efficace des pertes : QUIC utilise des techniques telles que la récupération rapide et la diffusion multiple pour gérer efficacement les pertes de paquets.

Amélioration de la qualité de service : QUIC utilise des mécanismes de contrôle de congestion pour garantir une qualité de service constante, même en cas de congestion du réseau.

Prise en charge de la mobilité : QUIC prend en charge la mobilité en permettant une transition en douceur entre les réseaux lorsque l'utilisateur se déplace.

Ces principes ont été conçus pour offrir des performances et une sécurité supérieures à celles de TCP, ainsi qu'une expérience plus fluide pour les utilisateurs finaux.

- protocole de google, repris par l'IETF en 2013
- destiné à remplacer TCP
- fonctionne sur UDP mais en mode connecté
- fusionne transport et chiffrement
- Protocole détaché du système d'exploitation, géré par l'application (navigateur, serveur...)
- multiplexing
- Identifiant de connexion
- https://quicwg.org/

## Usages

---

QUIC (Quick UDP Internet Connections) est un protocole de communication développé par Google qui a pour but d'améliorer les performances des connexions internet en utilisant l'UDP (User Datagram Protocol). Il a été conçu pour remplacer TCP (Transmission Control Protocol) et TLS (Transport Layer Security) pour les connexions internet, avec pour objectifs :

de réduire les temps de latence pour les connexions à distance
d'offrir une meilleure fiabilité et une meilleure résilience pour les connexions instables
de fournir une meilleure sécurité en utilisant la cryptographie
QUIC s'est avéré particulièrement utile pour les applications de temps réel nécessitant une forte performance et une fiabilité, telles que les applications de jeux en ligne, les services de streaming audio et vidéo, les applications de messagerie instantanée, les applications de collaboration en ligne, etc.

- HTTP/2
- HTTP/3

## Ouverture de session

---

QUIC (Quick UDP Internet Connections) est un protocole de transport de données qui a été développé pour remplacer TCP et TLS sur les connexions internet. Il est conçu pour résoudre les problèmes de lenteur et de latence sur les réseaux en utilisant des techniques telles que la multiplexation multiple, la mise en cache des paquets et la correction d'erreurs.

L'ouverture de session en QUIC est la première étape pour établir une connexion entre deux parties. Cela implique l'échange d'informations entre le client et le serveur afin de s'assurer que les deux parties peuvent communiquer correctement. Ce processus comporte plusieurs étapes, notamment la négociation des paramètres de connexion, l'authentification et la vérification de la compatibilité. Une fois que ces étapes sont terminées avec succès, la session est considérée comme ouverte et les parties peuvent commencer à transmettre des données.

## Paquet QUIC

---

```plaintext
                  en clair                                 données chiffrées
        <-------------------------><------------------------------------------------------------->
        ┌─────────┬───────────────┬──────────┬─────────┬────────────────┬────────────────────────┬
        |  flags  |  conn. ID     |  numéro  |  numéro |  Flux 4        |  Flux 9                |
        |         |  destination  |  packet  |  ACK    |  "GET /index"  |  "GET /index/img.png"  |
        └─────────┴───────────────┴──────────┴─────────┴────────────────┴────────────────────────┴
```

## Récapitulatif des ports communs

---

| Service      | Port               |
| ------------ | ------------------ |
| DOMAIN (DNS) | 53 / UDP, 53 / TCP |
| SSH          | 22 / TCP           |
| HTTP         | 80 / TCP           |
| HTTPS        | 443 / TCP          |
| FTP          | 20 / TCP, 21 / TCP |
| POP3         | 110 / TCP          |
| IMAP         | 143 / TCP          |
| SMTP         | 25 / TCP           |
| LDAP         | 389 / TCP          |

## Recapitulatif des unité de données

---

| Donnée     | Couche    | Protocol |
| ---------- | --------- | -------- |
| Bit        | Physique  |          |
| Trame      | Liaison   | Ethernet |
| Paquet     | Réseau    | IP       |
| Cellule    | Réseau    | ATM      |
| Segment    | Transport | TCP      |
| Datagramme | Transport | UDP      |
