---
layout: default
title: IPV6
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 7
---

# L'adresse IP v6

## Principes

---

L'adresse IP version 6 (IPv6) est une version plus récente de l'adresse IP (remplace l'adresse IPv4). L'adresse IPV6 permet de **fournir une adresse unique pour chaque dispositif connecté à Internet**, permettant ainsi de communiquer avec d'autres dispositifs sur le réseau. Donc elle est composée de **128 bits**, contrairement à une adresse IPv4 qui est composée de 32 bits. Les 128 bits sont **divisés en 8 blocs de 16 bits**, blocs de 4 chiffres, chacun représentant une valeur hexadécimale. Les blocs sont **séparés par des deux-points (:)** pour faciliter la lecture de l'adresse.

```plaintext
    2001:0db8:0000:85a3:0000:0000:ac1f:8001
    fe80:0000:0000:0000:cde0:a4b2:be02:1677
    8000:0000:0000:0000:0123:4567:89ab:cdef
```

## Format des adresses

---

Voici la composition des adresses IPv6 :

```plaintext
    2001:0db8:0000:85a3:0000:0000:ac1f:8001 / 64
    ------------------- -------------------   --
    ID RESEAU - 64b     ID HOTE - 64b         MASQUE
```

## Comment simplifier une adresse IP v6 ?

---

Une adresse IP v6 peut être simplifiée :

```plaintext
    fedc:0000:0000:ba05:0000:0000:00ff:0e65
```

#### Suppression des 0 les plus à gauche dans chaque groupe :

```plaintext
    fedc:0:0:ba05:0:0:ff:e65
```

#### Compactage d'un seul ensemble de groupes à 0 en "::" pas obligatoirement unique :

```
    fedc::ba05:0:0:ff:e65
    fedc:0:0:ba05::ff:e65
```

## Domaine de validité (Scope)

---

Le domaine de validité en IPv6 **définit les adresses qui peuvent être utilisées** pour l'attribution à des dispositifs réseau.

Il existe plusieurs types d'adresses IPv6, chacun ayant un domaine de validité différent.

- Les **adresses link-local (Link-Local Addresses, LLA)**, disposant du préfix **fe80::/10**, sont utilisées uniquement à l'intérieur d'un lien réseau,
- Les **adresses multicast (Multicast Addresses)** sont utilisées pour transmettre des paquets à plusieurs destinations simultanément.
- Les **adresses unique local**, disposant du préfix **fc00::/7**, sont uniquement utilisées à l'intérieur d'un site ou d'un réseau privé et ne sont pas censées être routées sur Internet. Elles sont similaires aux adresses privées en IPv4 (comme 10.0.0.0/8, 172.16.0.0/12 et 192.168.0.0/16), mais elles sont conçues pour une utilisation sur IPv6.
- Les **adresses globales uniques (Global Unicast Addresses, GUA)**, disposant du préfix **2000::/3**, peuvent être utilisées pour l'attribution à des dispositifs sur Internet.

Il existe également d'autres types d'adresses IPv6 qui sont réservées pour une utilisation spécifique, telles que :

- les **adresses de bouclage local (loopback)**,
- les **adresses de liaison zéro (unspecified)**,
- les **adresses d'interface locatrices (interface identifier)**,
- les **adresses temporaires (temporary)**.

Chacun de ces types d'adresses a un domaine de validité défini.

Chaque hôte dispose, pour chaque interface, d'une adresse link-local pour communiquer avec le routeur, d'une adresse globale s'il est relié à un autre réseau (comme Internet) et éventuellement d'une adresse unique locale pour communiquer avec les autres hôtes sur le réseau privé.

## Les adresses réservées

---

Les adresses IPv6 incluent également des adresses réservées pour une utilisation spécifique. Par exemple, l'adresse ::1 est réservée pour l'utilisation en tant qu'adresse de bouclage local (loopback), et l'adresse :: est réservée pour la mise en réseau des dispositifs sans adresse.

| Descriptions                     | adresses                                 | abrégée |
| -------------------------------- | ---------------------------------------- | ------- |
| Adresse nulle                    | 0000:0000:0000:0000:0000:0000:0000:0000  | ::      |
| Adresse de bouclage              | 0000:0000:0000:0000:0000:0000:0000:0001  | ::1     |
| Route par défaut                 |                                          | ::/0    |
| Découverte du routeur            | adresse de requête d'un routeur          | ff02::2 |
| Découverte du routeur            | adresse pour la réponse du routeur       | ff02::1 |
| Adresse IPv6 avec numéro de port | http://[2002:400:2a41:378::34a2:36]:8080 | ff02::1 |

## Auto-configuration du Host ID et du Net ID

---

#### Host ID

{: .mt-4 }

L'auto-configuration de l'identificateur d'hôte (Host ID) avec la génération sans état basée sur l'adresse MAC est un processus utilisé pour assigner automatiquement des adresses IPv6 à des hôtes sur un réseau.

Sur une machine Linux, l'identificateur d'hôte unique est généré en utilisant l'identificateur d'interface MAC de l'interface réseau. L'identificateur d'interface MAC est concaténé avec un préfixe d'adresse globale pour générer l'adresse IPv6 unique pour l'hôte.

A contrario, lorsque Windows génère une adresse IPv6 unique pour un hôte, il utilise une méthode de génération pseudo-aléatoire pour créer une adresse basée sur l'adresse MAC de l'interface réseau. La génération pseudo-aléatoire est utilisée pour éviter la diffusion des adresses MAC dans les systèmes d'exploitation Windows.

{: .note}

> L'idée de la génération pseudo-aléatoire est de créer une adresse qui ressemble à une adresse aléatoire, mais qui est en réalité déterminée à partir d'une séquence prédéterminée. Cette méthode de génération permet de créer des adresses qui ne peuvent pas être associées à l'adresse MAC de l'interface réseau, ce qui améliore la confidentialité et la sécurité du réseau.

{: .mt-4 }

#### Net-ID

{: .mt-4 }

L'auto-configuration du Net-ID (identificateur de réseau) se déroule en 3 parties :

1. La génération d'adresse unicast locale :

Permet d'assigner automatiquement des adresses IPv6 à des hôtes dans un réseau local (sans intervention humaine).

2. Demande du préfixe au routeur

**Détection du préfixe** : L'hôte envoie un message de demande de préfixe, appelé message Router Solicitation, à l'adresse ff02::2, qui est l'adresse de diffusion de niveau 2 pour tous les routeurs sur le réseau local. Ce message demande aux routeurs sur le réseau local de transmettre un message Router Advertisement qui contient le préfixe global unique utilisé pour générer les adresses IPv6 unicast locales sur le réseau local.

**Réception du préfixe** : Les routeurs reçoivent le message Router Solicitation et répondent en transmettant un message Router Advertisement contenant le préfixe global unique utilisé pour générer les adresses IPv6 unicast locales sur le réseau local. Ce message est transmis à l'adresse ff02::1, qui est l'adresse de diffusion de niveau 2 pour tous les hôtes sur le réseau local.

3. Création de l'adresse unicast globale

**Configuration de l'adresse** : L'hôte reçoit le message Router Advertisement et utilise le préfixe global unique pour générer son adresse IPv6 unicast locale en concaténant le préfixe global unique avec le Net-ID du réseau local et en ajoutant un suffixe à 64 bits qui est généré à partir de l'identificateur d'interface de l'interface réseau de l'hôte.

Ce processus de demande de préfixe est automatique et se produit chaque fois qu'un hôte se connecte à un nouveau réseau local. Il garantit que chaque hôte sur le réseau local dispose d'une adresse IPv6 unicast locale unique, ce qui est nécessaire pour la communication entre les hôtes sur le réseau.

## Composition des champs de l'entête IP v6

---

L'entête d'une adresse IPv6 comporte les champs suivants :

| Champs           | Descriptions                                                                                  |
| ---------------- | --------------------------------------------------------------------------------------------- |
| Version          | 4 bits indiquant la version (6)                                                               |
| Classe de trafic | 8 bits permettant d'activer la QoS                                                            |
| Label de flux    | 20 bits permettant d'identifier les paquets faisant partie du même flux pour la QoS           |
| Longueur totale  | 16 bits indiquant le nombre d'octets hors entête                                              |
| Entête suivante  | 8 bits identifiant le type de donnée se trouvant après l'entête (ICMP, ICMPV6, TCP, UDP, ...) |
| Limite de saut   | 8 bits indiquant la durée de vie du paquet                                                    |
| @ source         | 128 bits                                                                                      |
| @ destination    | 128 bits                                                                                      |
