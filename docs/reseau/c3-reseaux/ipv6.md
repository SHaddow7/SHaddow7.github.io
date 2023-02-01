---
layout: default
title: IPV6
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
---

Couche 3 - IP v6

Principes
• Adresse composée de 16 octets (0-255), soit 128 bits.
(340 282 366 920 938 463 463 374 607 431 768 211 456 adresses maxi)
• Affichée avec 8 blocs de 4 chiffres hexadécimaux
séparés par deux-points (:)
Exemples : 2001:0db8:0000:85a3:0000:0000:ac1f:8001
fe80:0000:0000:0000:cde0:a4b2:be02:1677
8000:0000:0000:0000:0123:4567:89ab:cdef
• Pas de NAT (au moins une adresse par machine).
• Pas de broadcast (remplacé par le multicast).
• Pas d'ARP (remplacé par la découverte des voisins).
• Configuration locale automatique.
• Simplification des entêtes (8 champs au lieu de 13).
• Interdiction de fragmenter les paquets au niveau des routeurs (simplification).
• Mécanisme de Qualité de Service (QoS) intégré.
• Baromètre annuel ARCEP de transition vers l'IPV6

Format des adresses
• Composée de deux parties :
• 1 adresse de préfixe de 64 bits (ID Réseau)
• 1 adresse d'interface de 64 bits (ID Hôte)
• Format :
• 2 x 4 groupes séparés par deux-points (:)
• 1 groupe = 2 octets
• 1 octets = 2 chiffres hexadécimaux
• Exemples : 2001:0db8:0000:85a3:0000:0000:ac1f:8001
fe80:0000:0000:0000:cde0:a4b2:be02:1677
8000:0000:0000:0000:0123:4567:89ab:cdef

Simplification des adresses
• Une adresse IP v6 peut être simplifiée :
fedc:0000:0000:ba05:0000:0000:00ff:0e65
• Suppression des 0 les plus à gauche dans chaque groupe :
fedc:0:0:ba05:0:0:ff:e65
• Compactage d'un seul ensemble de groupes à 0 en "::"
pas obligatoirement unique :
fedc::ba05:0:0:ff:e65
fedc:0:0:ba05::ff:e65

Domaine de validité (Scope)
• local
• link local
• Unique sur le lien connecté à l'interface réseau
• Ne peut communiquer qu'avec les hôtes de ce même lien
• Équivalent adresses APIPA
• Préfix fe80::/10
• unique local
• Unique dans le réseau local
• Équivalent adresses privées ipv4
• Peu utilisées
• Préfix fc00::/7
• Global
• Pouvant être routé sur le domaine public (Internet)
• Unique au monde
• Équivalent adresses publiques ipv4
• Préfix 2000::/3

Chaque hôte dispose pour chaque interface
• d'une adresse link local pour communiquer avec le routeur
• d'une adresse globale s'il est relié à un autre réseau (Internet, par exemple)
• Éventuellement d'une adresse unique local pour communiquer avec les
membres du LAN
Exemple:
stag@linux:~$ ip -6 a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 state UNKNOWN qlen 1000
inet6 ::1/128 scope host
valid_lft forever preferred_lft forever
3: wlp4s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 state UP qlen 1000
inet6 2a01:cb19:8105:8d00:adfe:cdb2:946:22a2/64 scope global dynamic mngtmpaddr
noprefixroute
valid_lft 1765sec preferred_lft 565sec
inet6 fe80::a9f5:528:87fb:bbbf/64 scope link noprefixroute
valid_lft forever preferred_lft forever

Adresses réservées
• Adresse nulle (0.0.0.0 en IP v4)
0000:0000:0000:0000:0000:0000:0000:0000
abrégée en ::
• Adresse de bouclage (127.0.0.1 en IP v4)
0000:0000:0000:0000:0000:0000:0000:0001
abrégée en ::1
• Route par défaut (0.0.0.0/0 en IP v4)
::/0
• Découverte du routeur (Router Discovery)
ff02::2 (adresse de requête d'un routeur)
ff02::1 (adresse pour la réponse du routeur)
• Adresse IP v6 avec numéro de port
http://[2002:400:2a41:378::34a2:36]:8080

Auto-configuration (HostID)
• Génération sans état basée sur l'adresse MAC (Linux).
• Génération pseudo-aléatoire pour éviter la diffusion des adresses
MAC (Windows)

Auto-configuration (NetID)
• Génération de l'adresse unicast locale
(fe80::HostID)
• Demande du préfixe au routeur
• Création de l'adresse unicast globale
(NetID::HostID)

Entête IP v6
Champs de l'entête
• Version : 4 bits indiquant la version (6)
• Classe de trafic : 8 bits permettant d'activer la QoS
• Label de flux : 20 bits permettant d'identifier les paquets faisant partie
du même flux pour la QoS
• Longueur totale : 16 bits indiquant le nombre d'octets hors entête
• Entête suivante : 8 bits identifiant le type de donnée se trouvant après
l'entête (ICMP, ICMPV6, TCP, UDP, extension...)
• Limite de saut : 8 bits indiquant la durée de vie du paquet
• @ source : 128 bits
• @ destination : 128 bits

