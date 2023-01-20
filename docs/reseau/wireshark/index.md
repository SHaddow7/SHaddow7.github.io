---
layout: default
title: Wireshark - Mémo
# nav_order: 5
has_children: true
has_toc: true
---

# Wireshark - Mémo

## Colonnes par défaut dans une sortie de capture de paquets

| NOM               | DESCRIPTION                                                           |
| ----------------- | --------------------------------------------------------------------- |
| No.               | Numéro de trame à partir du début de la capture du paquet             |
| Time              | Secondes à partir de la première image                                |
| Source (src)      | Adresse source (adresse IPv4, IPv6 ou Ethernet)                       |
| Destination (dst) | Adresse de destination                                                |
| Protocol          | Protocole utilisé dans la trame Ethernet (paquet IP ou le segment TC) |
| Length            | Longueur de la trame en octets                                        |

## Les opérateurs logique

| OPERATEUR   | DESCRIPTION              | EXEMPLE                                                           |
| ----------- | ------------------------ | ----------------------------------------------------------------- |
| and or &&   | ET logique               | toutes les conditions doivent correspondre                        |
| or or \|\|  | OU logique               | Toutes les conditions ou l'une d'entre elles doivent correspondre |
| xor or ^^   | XOR logique              | Une seule des deux conditions doit correspondre                   |
| not or !    | Non (négation)           | Pas égal à                                                        |
| [ n ] [ … ] | Opérateur de sous-chaîne | Filtrer un mot ou un texte spécifique                             |

## Filtrage des paquets (Filtres d'affichage)

| OPERATEUR | DESCRIPTION       | EXEMPLE                |
| --------- | ----------------- | ---------------------- |
| eq or ==  | Egale             | ip.dest == 192.168.1.1 |
| ne or !=  | Pas égal          | ip.dest != 192.168.1.1 |
| gt or >   | Supérieur à       | frame.len > 10         |
| it or <   | Inférieur à       | frame.len < 10         |
| ge or >=  | Supérieur ou égal | frame.len >= 10        |
| le or <=  | Inférieur ou égal | frame.len <= 10        |

## Types de filtres

| NOM                | DESCRIPTION                                   |
| ------------------ | --------------------------------------------- |
| Filtre de capture  | Filtrer les paquets pendant la capture        |
| Filtre d'affichage | Masquer les paquets d'un affichage de capture |

## Modes de capture de Wireshark

| NOM              | DESCRIPTION                                                                                          |
| ---------------- | ---------------------------------------------------------------------------------------------------- |
| Promiscuous mode | Définit l'interface pour capturer tous les paquets sur un segment de réseau auquel elle est associée |
| Monitor mode     | Configurer l'interface sans fil pour qu'elle capture tout le trafic qu'elle peut recevoir            |

## Divers

| NOM                 | DESCRIPTION             |
| ------------------- | ----------------------- |
| Slice Operator      | [ … ] – Range of values |
| Membership Operator | {} – In                 |
| CTRL+E              | Start/Stop Capturing    |

## Syntaxe du filtre de capture

| SYNTAX  | PROTOCOL | DIRECTION | HOSTS       | VALUE | LOGICAL | OPERATOR EXPRESSIONS |
| ------- | -------- | --------- | ----------- | ----- | ------- | -------------------- |
| Example | tcp      | src       | 192.168.1.1 | 80    | and     | tcp dst 202.164.30.1 |

## Syntaxe du filtre d'affichage

| SYNTAX  | PROTOCOLE | STRING 1 | STRING 2 | OPÉRATEUR DE COMPARAISON | VALEUR      | OPÉRATEUR LOGIQUE | EXPRESSIONS |
| ------- | --------- | -------- | -------- | ------------------------ | ----------- | ----------------- | ----------- |
| Exemple | http      | dest     | ip       | ==                       | 192.168.1.1 | and               | tcp port    |

## Commandes de filtrage communes

| USAGE                           | SYNTAX DU FILTRE                                  |
| ------------------------------- | ------------------------------------------------- |
| Filtre Wireshark par IP         | ip.add == 10.10.50.1                              |
| Filtrer par IP de destination   | ip.dest == 10.10.50.1                             |
| Filtrer par IP source           | ip.src == 10.10.50.1                              |
| Filtrer par plage d'IP          | ip.addr >= 10.10.50.1 and ip.addr <=10.10.50.100  |
| Filtrer par plusieurs Ips       | ip.addr == 10.10.50.1 and ip.addr == 10.10.50.100 |
| Filtrer l'adresse IP            | ! (ip.addr == 10.10.50.1)                         |
| Filtrer le sous-réseau          | ip.addr == 10.10.50.1/24                          |
| Filtrer par port                | tcp.port == 25                                    |
| Filtrer par port de destination | tcp.dstport == 23                                 |
| Filtrer par adresse IP et port  | ip.addr == 10.10.50.1 and Tcp.port == 25          |
| Filtrer par URL                 | http.host == “host name”                          |
| Filtrer par horodatage          | frame.time >= “June 02, 2019 18:04:00”            |
| Filtre SYN flag                 | Tcp.flags.syn == 1 and tcp.flags.ack ==0          |
| Filtre Wireshark Beacon         | wlan.fc.type_subtype = 0x08                       |
| Filtre de broadcast Wireshark   | eth.dst == ff:ff:ff:ff:ff:ff                      |
| Filtre de multicast Wireshark   | (eth.dst[0] & 1)                                  |
| Filtre de nom d'hôte            | ip.host = hostname                                |
| Filtre d'adresses MAC           | eth.addr == 00:70:f4:23:18:c4                     |
| Filtre du drapeau RST           | tcp.flag.reset == 1                               |
