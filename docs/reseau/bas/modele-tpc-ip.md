---
layout: default
title: Modèle TCP/IP
# nav_order: 2
parent: Généralités
grand_parent: Réseaux
---

# Modèle TCP-IP

### Principes

{: .note }

> Le modèle TCP-IP, adopté par Arpanet en 1983, est une simplification du modèle OSI.

### Les protocoles les plus courants

| Couches | Noms         | Ex. protocoles                        | Regroupe    |
| :-----: | :----------- | ------------------------------------- | ----------- |
|    4    | Application  | DNS, DHCP, SMTP, POP, IMAP, FTP, HTTP | Couches 5-7 |
|    3    | Transport    | UDP, TCP                              | Couche 4    |
|    2    | Internet     | IP, NAT, ARP, ICMP, RIP, OSPF, GBP    | Couche 3    |
|    1    | Accès réseau | PPP, Ethernet, Pilotes d'interface    | Couche 1-2  |
