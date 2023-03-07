---
layout: default
title: Routage
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 5
---

## Routage

## Principes

---

Le routage est un mécanisme qui **permet de déterminer le chemin que doivent suivre les paquets** pour arriver à destination. Le routeur assurera la fonction de routage en prenant en charge le réacheminement des paquets qui ne lui sont pas destinés. Chaque routeur détermine à quel voisin il transmet le paquet en fonction de l'adresse destinataire et de sa table de routage (le routage IP est fait pas à pas). Il faut noter qu'une machine ordinaire (Linux ou Windows) peut également se comporter comme un routeur.

## Table de routage

---

Chaque machine possède une table de routage qui **détermine l'action à entreprendre pour chaque paquet** en fonction de son adresse de destination. Cette table est utilisée en suivant un ordre allant du masque de sous-réseau le plus long (par exemple 255.255.255.0) au masque le plus court (0.0.0.0). Pour chaque entrée de la table, un opération ET logique est effectuée entre **l'adresse de destination** et le **masque**.

Si le résultat de l'opération ET logique est égal à l'adresse **réseau**, la ligne de la table de routage doit être utilisée soit en transmettant le paquet à la **passerelle** si elle est disponible, soit directement sur l'**interface** correspondante.

## Exemples de commandes

---

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
