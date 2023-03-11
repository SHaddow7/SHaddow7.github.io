---
layout: default
title: NAT
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 6
---

# NAT (Network Adress Translation)

## Principes

---

Du fait du manque d'adresse IP v4, le NAT a été mis en place afin de **permettre aux ordinateurs sur un réseau privé d'accéder à Internet en utilisant une adresse IP publique** partagée. Il **permet également de masquer l'identité** des ordinateurs sur le réseau privé en modifiant l'adresse IP de leur paquet de sortie pour qu'elle corresponde à l'adresse publique du routeur. L'utilisation du NAT peut également présenter certaines limitations pour certains usages en ligne.

- En **NAT STATIQUE**, le routeur **remplace l'adresse privé de la machine par une adresse publique** obtenue auprès du FAI, ce qui ne corrige pas le problème de la pénurie d'adresses.

- En **NAT DYNAMIQUE**, on **utilise le N° de port TCP ou UDP pour partager une seule adresse IP publique** entre plusieurs machines qui possèdent des adresses IP privées différentes.

## Le NAT sortant (SNAT)

---

### AVANTAGES

- Permet de **modifier les adresses IP source** d'un paquet qui quitte un LAN **par une adresse IP publique** pour accéder à Internet et à d'autres réseaux externe,
- Permet à plusieurs périphériques du réseau local d'**utiliser la même adresse IP publique**,
- Permet d'**économiser les adresses IP publiques** et de **sécuriser le LAN** en masquant les adresses IP privées

### INCONVENIENTS

- le routeur ne saura pas vers quelle machine renvoyer le paquet si les 2 machines ont utilisé le même N° de port privé.

## Le NAT / PAT - Network Address Translation / Port Address Translation

---

En utilisant la NAT/PAT, il y aura **translation d'adresse IP**, mais aussi **translation de port** au niveau du routeur. Au retour le routeur sait maintenant vers quelle station envoyer le paquet, car il maintient une table de correspondance interne.

### AVANTAGES

- **Économie d'adresses IP publiques**, car plusieurs adresses privées peuvent être traduites en une seule adresse publique.
- **Meilleure sécurité**, car les adresses IP privées ne sont pas exposées à l'extérieur du réseau.
- **Facilité de configuration**, car la traduction d'adresse est gérée par le routeur ou le pare-feu du réseau.

### INCONVENIENTS

- **Perte de l'identité originale de l'adresse IP privée,** car toutes les adresses sont traduites en une seule adresse publique.
- **Risque de saturation des numéros de port**, car un grand nombre d'utilisateurs peuvent partager une même adresse IP publique.
- **Difficulté de configuration pour les applications qui nécessitent des connexions directes**, comme les applications de VoIP ou les jeux en ligne.

## Le NAT Entrant (DNAT) ou Redirection de port (Port forwarding)

---

Le NAT entrant **permet à des ordinateurs sur un réseau externe d'accéder à des ordinateurs sur un réseau privé** en associant une adresse IP publique statique à un ordinateur sur le réseau privé et en redirigeant les demandes vers cet ordinateur en fonction de l'adresse IP publique associée. Il est égalemet utile pour un serveur FTP ou un jeu.

### AVANTAGES

- Permet de **rediriger le trafic** vers un serveur interne ou un service spécifique sur une machine interne, même si cette machine ne possède pas d'adresse IP publique.
- Permet de **masquer l'adresse IP interne** des machines pour des raisons de sécurité.
- Permet de **faire fonctionner plusieurs services** sur une seule adresse IP publique.

### INCONVENIENTS

- Peut **créer des problèmes de compatibilité** avec certains protocoles qui contiennent des adresses IP dans les données échangées.
- Peut **causer des problèmes de performances** si la capacité de traitement du dispositif de DNAT est insuffisante pour gérer le trafic entrant.
- Peut **compliquer la configuration et la maintenance du réseau**.
