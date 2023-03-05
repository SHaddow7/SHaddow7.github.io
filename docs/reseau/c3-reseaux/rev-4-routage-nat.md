---
layout: default
title: Routage / NAT
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 4
---

# Routage / NAT

## Routages - principes

---

Le routage est un mécanisme qui permet de déterminer le chemin que doivent suivre les paquets pour arriver à destination. Le routeur assurera la fonction de routage en prenant en charge le réacheminement des paquets qui ne lui sont pas destinés. Chaque routeur détermine à quel voisin il transmet le paquet en fonction de l'adresse destinataire et de sa table de routage (le routage IP est fait pas à pas). Il faut noter qu'une machine ordinaire (Linux ou Windows) peut également se comporter comme un routeur.

## Table de routage

---

Il est important de noter que chaque ordinateur possède une table de routage qui détermine l'action à entreprendre pour chaque paquet en fonction de son adresse de destination. Cette table est utilisée en suivant un ordre allant du masque de sous-réseau le plus long (par exemple 255.255.255.0) au masque le plus court (0.0.0.0). Pour chaque entrée de la table, un opération ET logique est effectuée entre l'adresse de destination et le masque.

Si le résultat de l'opération ET logique est égal à l'adresse réseau, la ligne de la table de routage doit être utilisée soit en transmettant le paquet à la passerelle si elle est disponible, soit directement sur l'interface correspondante.

## Quelques commandes à connaître

```bash
nmtui          #  Permet de modifier une connexion
```

```bash
ip r[oute]     #  Affiche ou gére les entrées de la table de routage sur un OS basé sur Unix ou Linux
ip a[ddress]   #  Information ipv4 et ipv6
ip l[ink]      #  Information couche 2 (mac)
ip r[oute]     #  Information de routage
ip n[eighbour] # Information ARP
```

```bash
route print    #  afficher la table de routage actuelle sur l'OS Windowss
```

```bash
Traceroute
# Permet d'envoyer des pings successifs en partant d'un TTL à 1 et en augmentant de 1 à chaque essai.
# Permet de tracer la route empruntée par le paquet.
# Permet de récupérer les adresses des routeurs intermédiaires.
# (sauf s'ils sont configurés pour ne pas répondre)
```

# NAT

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
