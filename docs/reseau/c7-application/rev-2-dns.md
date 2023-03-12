---
layout: default
title: DNS
parent: 7 - Application
grand_parent: Réseaux
has_toc: false
nav_order: 2
---

# DNS (Domain Name System)

## Principes

---

Le **DNS (Domain Name System)** est une **base de données distribuée de noms de domaines** qui a**ssocie les noms de domaines à des adresses IP**. Cela permet aux utilisateurs de se connecter à des sites web en utilisant des noms faciles à retenir plutôt que des adresses IP complexes. Le DNS utilise une architecture hiérarchique de serveurs pour stocker et distribuer les informations de noms de domaines.

## Architecture

---

### **NIV. 0** - Serveur racine

{: .mb-6 }
Les **serveurs DNS racines** gèrent les délégations pour les noms de domaine de premier niveau (TLD). Il existe 13 groupes de serveurs racines, pour des raisons de fiabilité et de performance. Chaque groupe est un ensemble de serveurs DNS. En 2022, sont opérationnels **1548 serveurs DNS racines**.

### **NIV. 1** - TLD (Top Level Domaine) ou Domaine de plus haut niveau

Le TLD (Top Level Domain) qui est géré par l'ICANN, est la partie la plus haute de la hiérachie des noms de domaines. À partir de ce TLD, on va trouver les domaines inférieurs et sous-domaines dont la gestion est décentralisée. Il s'agit de l'**extension finale dans une adresse de site web**, telle que :

- **TLD spéciaux** : .arpa, .ip6, .onion, ...
- **TLD nationaux** : .fr, .re, .gp, .mq, .gw, .gb, .it, .de, .us, ...
- **TLD génériques** : (Pas de notion géographiques)
- **TLD ouverts** : .com, .net, .org, .info, ...
- **TLD restreint**s : .biz, .name, .pro, ...
- **TLD parrainés** : .edu, .gov, .mil, ...
- **TLD réservés** : .example, .invalid, .localhost, .test, ...
- **Autres TLD** : .paris, .berlin, .sport, .bzh, .alsace, .corsica, .leclerc, .bnpparibas, .clubmed, .voyage, etc ...

L'[AFNIC](https://www.afnic.fr/) gère les domaines tels que :

- .fr (France),
- .re (Réunion),
- .tf (Terres australes et antarctiques françaises),
- .wf (Wallis et Futuna),
- .yt (Mayotte),
- .pm (Saint Pierre et Miquelon).

[DOMeNIC](https://www.dom-enic.com/) gère les domaines tels que :

- .mq (Martinique),
- .gp (Guadeloupe),
- .gf (Guyane française).

Pour créer un TLD :

{: .mb-6 }

- 185 000 $ de prix d'entrée.
- 25 000 $ par an.
- Maintenir un serveur (au moins) actif 24/24

### **NIV. 2** - Les sous-domaines

Un sous-domaine est une subdivision d'un domaine de niveau 1 (TLD) qui permet de créer une hiérachie dans l'arborescence de noms de domaine. Il est ajouté avant le nom de domaine principal et est souvent utilisé pour organiser les ressources d'un site web en sous-groupes, tels que des départements ou des sections géographiques.

## Fonctionnement du DNS

---

1. Lorsqu'un utilisateur entre un nom de domaine dans son navigateur, le navigateur envoie une requête DNS à un serveur DNS local ou à un serveur DNS de niveau supérieur.

2. Le serveur DNS répond à la requête en renvoyant l'adresse IP associée au nom de domaine. Si le serveur DNS ne dispose pas de l'adresse IP pour le nom de domaine, il renvoie une référence à un autre serveur DNS, qui peut résoudre la requête à un niveau plus bas dans la hiérarchie de domaines.

3. Le navigateur utilise ensuite l'adresse IP pour établir une connexion avec le serveur Web associé au nom de domaine, permettant à l'utilisateur d'accéder au site Web.

## Types de requêtes DNS - <span class="culture-gen">_Culture générale_</span>

---

{: .mb-4 }

Les requêtes DNS **permettent d'obtenir des informations spécifiques sur un domaine donné**. Donc voici une liste exhaustive des types de requêtes DNS les plus couramment utilisés :

| Requete | Description                                                                |
| :------ | :------------------------------------------------------------------------- |
| A       | demande l'adresse IP associée à un nom de domaine                          |
| AAAA    | demande l'adresse IPv6 associée à un nom de domaine                        |
| MX      | demande les enregistrements de serveur de messagerie pour un domaine donné |
| CNAME   | demande l'alias d'un nom de domaine                                        |
| NS      | demande les serveurs de noms pour un domaine donné                         |
| SOA     | demande l'autorité de zone pour un domaine donné                           |

## Les problèmes de sécurité liés au DNS - <span class="culture-gen">_Culture générale_</span>

---

Le DNS étant un élément clé de l'infrastructure d'Internet, il est crucial de prendre en compte les risques de sécurité associés à son utilisation. Ces risques de sécurité peuvent inclure :

- Le [DNS Spoofing](../definitions.html#le-dns-spoofing)
- Le [DNS Poising](../definitions.html#le-dns-poising)
- Les [attaques par déni de service](../definitions.html#les-attaques-par-déni-de-service-dos) (DoS)

## Les outils de diagnostic DNS

---

### nslookup

La commande **nslookup** est utilisé pour **interroger les serveurs de noms de domaine** afin d'**obtenir des informations sur un nom de domaine ou une adresse IP**.

{: .mb-6 }

```bash
nslookup www.google.com
```

### dig

La commande **dig** est utilisé pour **interroger les serveurs de noms de domaine** et d'**obtenir des informations sur les enregistrements DNS**. Elle fournit des informations plus détaillées que la commande **nslookup**.

{: .mb-6 }

```bash
dig www.facebook.com
```

### Traceroute

La commande **traceroute** est utilisé pour **déterminer l'itinéraire emprunté par un paquet de données** à travers un réseau. Elle permet de vérifier si des paquets sont perdus ou si des retards sont présents sur certains noeuds.

{: .mb-6 }

```bash
traceroute www.facebook.com
```

## Les DNS connus

---

### DNS des opérateurs français

| Opérateur | Principal      | Secondaire     | Tertiaire     |
| :-------- | :------------- | :------------- | :------------ |
| Bouygues  | 194.158.122.10 | 194.158.122.15 |               |
| Free      | 212.27.40.240  | 212.27.40.241  |               |
| SFR       | 109.0.66.10    | 109.0.66.20    |               |
| Orange    | 80.10.246.2    | 80.10.246.129  |               |
| OVH       | 91.121.61.147  | 87.98.149.171  | 91.121.58.181 |

### DNS publiques connus

| Opérateur  | Principal      | Secondaire     |
| :--------- | :------------- | :------------- |
| Google     | 8.8.8.8        | 8.8.4.4        |
| Cloudflare | 1.1.1.1        | 1.0.0.1        |
| OpenDNS    | 208.67.222.222 | 208.67.220.220 |
