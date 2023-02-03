---
layout: default
title: NAT
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
---

## Le NAT - Network Address Translation

---

Du fait du manque d'adresse IP v4, le NAT a été mis en place afin de permettre aux ordinateurs sur un réseau privé d'accéder à Internet en utilisant une adresse IP publique partagée. Il permet également de masquer l'identité des ordinateurs sur le réseau privé en modifiant l'adresse IP de leur paquet de sortie pour qu'elle corresponde à l'adresse publique du routeur.

En NAT statique, le routeur remplace l'adresse privée de la machine par une adresse publique obtenue auprès du FAI, ce qui ne corrige pas le problème de la pénurie d'adresses.

En NAT dynamique, on utilise le N° de port TCP ou UDP pour partager une seule adresse IP publique entre plusieurs machines qui possèdent des adresses IP privées différentes.

## Le NAT sortant - SNAT

---

Le NAT sortant permet à des machines sur un réseau privé d'accéder à Internet et à d'autres réseaux externes, mais il peut également présenter certaines limitations pour certains usages en ligne, tels que la mise en place de services en ligne ou la participation à des jeux en réseau.

## NAT / PAT - Network Address Translation / Port Address Translation

---

Le NAT/PAT permet à des ordinateurs sur un réseau privé d'accéder à Internet et à d'autres réseaux externes en utilisant une adresse IP publique partagée, mais il peut également présenter certaines limitations pour certains usages en ligne. En utilisant la NAT/PAT, il y aura translation d'adresse IP, mais aussi translation de port au niveau du routeur. Au retour le routeur sait maintenant vers quelle station envoyer le paquet, car il maintient une table de correspondance interne.

## NAT Entrant (DNAT) ou Redirection de port (Port forwarding)

---

Le NAT entrant permet à des ordinateurs sur un réseau externe d'accéder à des ordinateurs sur un réseau privé en associant une adresse IP publique statique à un ordinateur sur le réseau privé et en redirigeant les demandes vers cet ordinateur en fonction de l'adresse IP publique associée. Il est égalemet utile pour un serveur FTP ou un jeu.
