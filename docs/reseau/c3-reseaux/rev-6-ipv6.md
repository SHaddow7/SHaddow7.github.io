---
layout: default
title: IPV6
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
nav_order: 7
---

# IPV6

## Principes

---

L'adresse IP version 6 (IPv6) est une version plus récente de l'adresse IPv4. Elle permet de **fournir une adresse unique pour chaque dispositif connecté à Internet**, permettant ainsi de **communiquer avec d'autres dispositifs sur le réseau**.

Elle est composée de **128 bits**, contrairement à une adresse IPv4 qui est composée de 32 bits. Les 128 bits sont **divisés en 8 blocs de 16 bits**, blocs de 4 chiffres, chacun représentant une valeur hexadécimale. Les blocs sont **séparés par des deux-points (:)** pour faciliter la lecture de l'adresse.

## Avantages

---

Les quelques avantages que propose l'adresse IPv6s :

- **Pas de NAT** (au moins une adresse par machine).
- **Pas de broadcast** (remplacé par le multicast).
- **Pas d'ARP** (remplacé par la découverte des voisins).
- **Configuration locale automatique**.
- **Simplification des entêtes** (8 champs au lieu de 13).
- **Interdiction de fragmenter les paquets au niveau des routeurs** (simplification).
- **Mécanisme de Qualité de Service** (QoS) intégré.
- **Baromètre annuel ARCEP de transition vers l'IPV6**

## Format des adresses IPv6

---

Voici la composition des adresses IPv6 :

```plaintext
    2001:0db8:0000:85a3:0000:0000:ac1f:8001 / 64
    ------------------- -------------------   --
    ID RESEAU - 64b     ID HOTE - 64b         MASQUE
```

## Comment simplifier une adresse IPv6 ?

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

Le domaine de validité en IPv6 **définit les adresses qui peuvent être utilisées** pour l'attribution à des dispositifs réseau. Il existe plusieurs types d'adresses IPv6, chacun ayant un domaine de validité différent.

### LOCAL

- Les adresses **link-local**, disposant du préfix **fe80::/10**, sont **utilisées uniquement à l'intérieur d'un lien réseau**, ne peuvent communiquer qu'avec les hôtes de ce même lien. Equivalent aux adresses **APIPA**.

- Les adresses **unique local**, disposant du préfix **fc00::/7**, sont uniquement **utilisées à l'intérieur d'un réseau privé** et **ne sont pas censées être routées sur Internet**. Elles sont similaires aux adresses privées en IPv4 (comme 10.0.0.0/8, 172.16.0.0/12 et 192.168.0.0/16), mais elles sont conçues pour une utilisation sur IPv6.

### GLOBAL

- Les adresses **globales uniques**, disposant du préfix **2000::/3**, peuvent être utilisées pour l'**attribution à des dispositifs sur Internet**. Equivalentaux adresses publiques IPv4.

### MULTICAST - _Culture générale_

- Les **adresses multicast (Multicast Addresses)** sont utilisées pour transmettre des paquets à plusieurs destinations simultanément.

### AUTRES - _Culture générale_

Il existe également d'autres types d'adresses IPv6 qui sont réservées pour une utilisation spécifique, telles que :

- les **adresses de bouclage local (loopback)**,
- les **adresses de liaison zéro (unspecified)**,
- les **adresses d'interface locatrices (interface identifier)**,
- les **adresses temporaires (temporary)**.

Chacun de ces types d'adresses a un domaine de validité défini.

### A savoir

Chaque hôte dispose, pour chaque interface, d'une **adresse link-local pour communiquer avec le routeur**, d'une **adresse globale** s'il est **relié à un autre réseau (comme Internet)** et éventuellement d'une adresse **unique locale pour communiquer avec les autres hôtes sur le réseau privé**.

## Les adresses réservées

---

Les adresses IPv6 incluent également des adresses réservées pour une utilisation spécifique. Par exemple, l'adresse ::1 est réservée pour l'utilisation en tant qu'adresse de bouclage local (loopback), et l'adresse :: est réservée pour la mise en réseau des dispositifs sans adresse.

| Descriptions                     | adresses                                 | abrégée |
| -------------------------------- | ---------------------------------------- | :-----: |
| Adresse nulle                    | 0000:0000:0000:0000:0000:0000:0000:0000  |   ::    |
| Adresse de bouclage              | 0000:0000:0000:0000:0000:0000:0000:0001  |   ::1   |
| Route par défaut                 |                                          |  ::/0   |
| Découverte du routeur            | adresse de requête d'un routeur          | ff02::2 |
| Découverte du routeur            | adresse pour la réponse du routeur       | ff02::1 |
| Adresse IPv6 avec numéro de port | http://[2002:400:2a41:378::34a2:36]:8080 | ff02::1 |

## Auto-configuration

---

### Host ID

- **Génération sans état basée** sur l'adresse MAC (Linux) est utilisé pour **assigner automatiquement des adresses IPv6 à des hôtes sur un réseau**.

```plaintext
    Adresse MAC de la machine
    1C 3E 84 1E 4E E6
```

1. Insertion de la séquence **"FF FE"**

```plaintext
    1C 3E 84 FF FE 1E 4E E6
```

2. Ajout de **"+2"** au 1<sup>er</sup> octet

```plaintext
    ID HOTE = 1E 3E 84 FF FE 1E 4E E6
    ID HOTE = 1E3E : 84FF : FE1E : 4EE6
```

Sur une machine Linux, l'identificateur d'hôte unique est généré en utilisant l'identificateur d'interface MAC de l'interface réseau. L'identificateur d'interface MAC est concaténé avec un préfixe d'adresse globale pour générer l'adresse IPv6 unique pour l'hôte.

- **Génération pseudo-aléatoire** est utilisée pour **éviter la diffusion des adresses MAC dans les systèmes d'exploitation Windows**. Elle permer de créer une adresse qui ressemble à une adresse aléatoire, mais qui est en réalité déterminée à partir d'une séquence prédéterminée.

---

### Net ID

L'auto-configuration du Net-ID (identificateur de réseau) se déroule en 3 parties :

1. **La génération d'adresse unicast locale** qui permet d'assigner automatiquement des adresses IPv6 à des hôtes dans un réseau local (sans intervention humaine).

2. **Demande du préfixe au routeur** : l'hôte envoie un message de demande de préfixe à l'adresse [ff02::2](#les-adresses-réservées) aux routeurs sur le réseau local. Ensuite, les routeurs reçoivent le message et répondent en transmettant un message message contenant le **NetID**. Ce message est transmis à l'adresse [ff02::1](#les-adresses-réservées).

3. **Création de l'adresse unicast globale - (NetID::HostID)** : L'hôte reçoit le message et utilise le préfixe global unique pour générer son adresse IPv6 locale en concaténant le** préfixe global unique** avec le **Net-ID** du réseau local et en ajoutant un suffixe à 64 bits qui est généré à partir de l'identificateur d'interface de l'interface réseau de l'hôte.

## Composition des champs de l'entête IP v6

---

L'entête d'une adresse IPv6 comporte les champs suivants :

| Champs               | Descriptions                                                                                  |
| -------------------- | --------------------------------------------------------------------------------------------- |
| **Version**          | 4 bits indiquant la version (6)                                                               |
| **Classe de trafic** | 8 bits permettant d'activer la QoS                                                            |
| **Label de flux**    | 20 bits permettant d'identifier les paquets faisant partie du même flux pour la QoS           |
| **Longueur totale**  | 16 bits indiquant le nombre d'octets hors entête                                              |
| **Entête suivante**  | 8 bits identifiant le type de donnée se trouvant après l'entête (ICMP, ICMPV6, TCP, UDP, ...) |
| **Limite de saut**   | 8 bits indiquant la durée de vie du paquet                                                    |
| **@ source**         | 128 bits                                                                                      |
| **@ destination**    | 128 bits                                                                                      |
