---
layout: default
title: DNS
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
# nav_order: 0
---

# DNS

## Définition

---

Le DNS (Domain Name System) est un protocole de la couche application qui <b>permet de traduire les noms de domaine en adresses IP</b>. Les noms de domaine sont des noms faciles à retenir pour les utilisateurs, tels que www.google.com, tandis que les adresses IP sont des nombres utilisés pour identifier les équipements de réseau sur Internet, tels que 172.217.5.174.

## Définition - (+ approfondi)

---

Le DNS est un système distribué et hiérarchique qui utilise des serveurs DNS pour répondre aux requêtes des équipements de réseau. Les serveurs DNS sont organisés en une structure hiérarchique de domaines, où chaque domaine est responsable de la résolution des noms de domaine pour un sous-ensemble d'équipements de réseau.

Le processus de résolution DNS commence par la requête d'un équipement de réseau pour un nom de domaine. L'équipement de réseau envoie une requête DNS à un serveur DNS local ou à un serveur DNS de niveau supérieur, en utilisant le protocole UDP ou TCP.

Le serveur DNS répond à la requête en renvoyant l'adresse IP associée au nom de domaine. Si le serveur DNS ne dispose pas de l'adresse IP pour le nom de domaine, il renvoie une référence à un autre serveur DNS, qui peut résoudre la requête à un niveau plus bas dans la hiérarchie de domaines.

Le DNS utilise des enregistrements DNS pour stocker les informations de résolution des noms de domaine. Les enregistrements DNS contiennent des informations telles que l'adresse IP associée à un nom de domaine, le serveur de messagerie associé à un domaine de messagerie, et le serveur de nom associé à un domaine.

Le DNS est essentiel pour la navigation sur Internet et la communication entre les équipements de réseau. Sans le DNS, les utilisateurs devraient utiliser des adresses IP pour accéder aux sites Web, ce qui serait difficile à retenir et peu pratique.

## Principes de fonctionnement

---

1. Lorsqu'un utilisateur entre un nom de domaine dans son navigateur, le navigateur envoie une requête DNS à un serveur DNS local ou à un serveur DNS de niveau supérieur.

2. Le serveur DNS répond à la requête en renvoyant l'adresse IP associée au nom de domaine. Si le serveur DNS ne dispose pas de l'adresse IP pour le nom de domaine, il renvoie une référence à un autre serveur DNS, qui peut résoudre la requête à un niveau plus bas dans la hiérarchie de domaines.

3. Le navigateur utilise ensuite l'adresse IP pour établir une connexion avec le serveur Web associé au nom de domaine, permettant à l'utilisateur d'accéder au site Web.

Principes
• Problématique : connaître l'ensemble des adresses IP mondiales est
impossible. Il est plus facile de se souvenir de www.impots.gouv.fr que
de 145.242.11.26
• Le DNS (Domain Name System) est une base de données distribuée qui
permet à certaines machines de contrôler certains segments de la base
de données, tandis que toute la base de données est accessible avec un
mécanisme client-serveur.
• Le système est basé sur une hiérarchie de noms de domaines partant
d'une racine représentée par un point (.), qui n'apparait que dans les
configuration du serveur DNS, pas dans l'usage courant.
• On trouve ensuite au 1er niveau les TLD (Top Level Domains) qui sont
gérés par l'ICANN. À partir de ces TLD, on va trouver les domaines
inférieurs et sous-domaines dont la gestion est décentralisée.
• Un système de réplication assure la fiabilité, tandis que des caches
augmentent la performance du système.

Les serveurs racines (Root Servers)
Les serveurs DNS racines gèrent les délégations pour les noms de
domaine de premier niveau (TLD). Il existe 13 groupes de serveurs racines,
pour des raisons de fiabilité et de performance. Chaque groupe est un
ensemble de serveurs DNS.
En 2022, sont opérationnels 1548 serveurs DNS racines.

Les serveurs racines (Root Servers)

Les serveurs racines (Root Servers)

Domaines de plus haut niveau (Top Level Domain)
• L'ICANN Internet Corporation for Assigned Names and Numbers autorise
la création des TLD qui sont en juin 2018 au nombre de 1500 au travers
de sa structure nommée IANA.
http://data.iana.org/TLD/tlds-alpha-by-domain.txt
• TLD spéciaux : .arpa, .ip6, .onion, ...
• TLD nationaux : .fr, .re, .gp, .mq, .gw, .gb, .it, .de, .us, ...
• TLD génériques : (Pas de notion géographiques)
• TLD ouverts : .com, .net, .org, .info, ...
• TLD restreints : .biz, .name, .pro, ...
• TLD parrainés : .edu, .gov, .mil, ...
• TLD réservés : .example, .invalid, .localhost, .test, ...

Domaines de plus haut niveau (Top Level Domain)
• En 2021, de nombreux TLD ont été ajoutés,
comme .paris, .berlin, .sport, .bzh, .alsace, .corsica, .leclerc, .bnppar
ibas, .clubmed, .voyage, ...
• Les TLD sont obligatoirement dans un sous-ensemble de l'ASCII, mais
sont inter-nationalisables depuis 2003 avec une révision en 2010
(https://fr.wikipedia.org/wiki/Nom_de_domaine_internationalisé).
• Pour créer un TLD :
• 185 000 $ de prix d'entrée.
• 25 000 $ par an.
• Maintenir un serveur (au moins) actif 24/24
• Sur un réseaux privé, il est possible de créer autant de TLD privés que
l'on souhaite, à condition de maitriser ses serveurs DNS.
Par exemple à la DGFiP on a créé : .dgfip, .alize, .impots, ...

Domaine .fr
• Le domaine FR est géré par l'AFNIC (Association Française pour le Nommage
Internet en Coopération) https://www.afnic.fr/. Elle gère également .re
(Réunion), .tf (Terres australes et antarctiques françaises), .wf (Wallis et
Futuna), .yt (Mayotte), .pm (Saint Pierre et Miquelon)
• Les .mq (Martinique), .gp (Guadeloupe), .gf (Guyane française) sont gérés par :
https://www.dom-enic.com/
• Le domaine gouv.fr est soumis à des procédures spécifiques lorsqu'une
administration souhaite y créer un sous-domaine.
• La DGFIP obtient la délégation de la zone dgfip.finances.gouv.fr et doit maintenir
un serveur DNS pour délivrer les adresses de ses serveurs accessibles par le
public

DNS des opérateurs français
• DNS publiques connus
• DNS de la DGFiP :
Opérateur Principal Secondaire Tertiaire
Bouygues 194.158.122.10 194.158.122.15
Free 212.27.40.240 212.27.40.241
SFR 109.0.66.10 109.0.66.20
Orange 80.10.246.2 80.10.246.129
OVH 91.121.61.147 87.98.149.171 91.121.58.181
Opérateur Principal Secondaire
Google 8.8.8.8 8.8.4.4
Cloudflare 1.1.1.1 1.0.0.1
OpenDNS 208.67.222.222 208.67.220.220
dns1.dgfip.finances.gouv.fr 145.242.11.11
dns2.dgfip.finances.gouv.fr 145.242.6.173

• Hiérarchie

• DNS Interne
• La DGFIP est dotée d'un DNS national (sous BIND) chargé de résoudre les
adresses des serveurs internes :
• ns0.dgfip qui a pour adresse 10.154.59.104
• ns1.dgfip qui a pour adresse 10.156.32.33
• Dans la filière FF, les serveurs MMA jouaient le rôle de serveur DNS locaux afin
de résoudre les noms des stations de travail.
• Le TLD de la dgfip a été nommé : .dgfip
• Il est ensuite découpé en sous-domaines
organisationnels : .intranet.dgfip, .infra.dgfip, .formation.dgfip, etc...
• Les demandes de création/suppression/modification sont centralisées et doivent
être faites par l'intermédiaire de la Balf : dnsadmin@dgfip.finances.gouv.fr
• Les directives en matière de nommage sont répertoriées dans la note :
http://venezia.appli.dgfip/plugins/owl/owl_wrapper/download.php?sess=0&parent=
53137&expand=0&order=name&curview=0&sortname=ASC&id=306831
