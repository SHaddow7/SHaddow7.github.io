---
layout: default
title: Modèle OSI / Modèle TCP-IP
nav_order: 2
parent: Couches basses
grand_parent: Réseaux
---

# Modèle OSI / Modèle TCP-IP

## Le modèle OSI - Open Systems Interconnection

### Principes

L' ISO (International Standards Organisation) publie le modèle en 1978

- Le but est d'éviter le blocage des systèmes « propriétaires ».
- Fournir un cadre général à respecter pour les intervenants
  dans le monde du réseau.
- Fournir des normes techniques.

Découpage en 7 couches en retenant les principes suivants :

- Chaque couche a un rôle particulier qu'aucune autre couche ne doit réaliser.
- Une couche donnée ne communique qu'avec les couches
  immédiatement adjacentes.
- Les communications entre les couches sont réduites au
  maximum.

### L'encapsulation

- Quand les données sont envoyées à la couche inférieure, chaque
  couche ajoute son entête/suffixe.
- Quand les données remontent à la couche supérieure, chaque couche
  doit supprimer son entête/suffixe.

## Le modèle TCP-IP

### Principes

- Le modèle TCP-IP, adopté par Arpanet en 1983, est une simplification du modèle OSI.

### Les protocoles les plus courants

| Les couches  | Les protocoles                                    |
| :----------- | ------------------------------------------------- |
| Application  | DNS, BOOTP, DHCP, SMTP, POP, IMAP, FTP,TFTP, HTTP |
| Transport    | UDP, TCP                                          |
| Internet     | IP, NAT, ARP, ICMP, RIP, OSPF, EIGRP, GBP         |
| Accès réseau | PPP, Ethernet, Pilotes d'interface                |
