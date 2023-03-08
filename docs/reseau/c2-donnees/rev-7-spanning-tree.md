---
layout: default
title: Spanning Tree Protocol
parent: 2 - Liaison Données
grand_parent: Réseaux
has_toc: false
nav_order: 7
---

# Spanning Tree Protocol

## Principes

---

Spanning Tree est un **algorithme** utilisé pour **éliminer les boucles dans un réseau local (LAN)** en utilisant un **arbre couvrant**. Il s'agit d'un protocole de couche de liaison de données qui travaille avec les commutateurs pour déterminer le chemin le plus efficace pour transmettre les données et éviter les boucles.

Les boucles peuvent survenir dans un réseau en raison de la présence de plusieurs chemins entre les périphériques. Si les données sont transmises à travers ces chemins simultanément, elles peuvent être transmises en boucle indéfiniment, entraînant une surutilisation de la bande passante et une perte de performance du réseau.

L'algorithme Spanning Tree fonctionne en créant un arbre couvrant qui comprend un seul chemin entre tous les périphériques réseau. Cela signifie que les données ne peuvent être transmises qu'à travers un seul chemin, ce qui élimine les boucles. Si un lien physique échoue, l'algorithme Spanning Tree **déterminera un nouveau chemin** pour transmettre les données, ce qui garantit la continuité du réseau.

L'utilisation de Spanning Tree est importante pour **garantir la stabilité et la fiabilité d'un réseau local**. Il est pris en charge par les commutateurs modernes et peut être utilisé pour gérer les réseaux de toutes tailles, depuis les petits réseaux locaux jusqu'aux grandes infrastructures de data center.

## Bridge Protocol Data Units (BPDU)

---

- Trame de contrôle de STP
- Échangé entre les switches (toutes les 2s)

## États des ports

---

- **Listening** : le commutateur « écoute » les BPDU et détermine la topologie réseau ;
- **Learning** : le commutateur construit une table faisant correspondre les adresses MAC aux numéros des ports ;
- **Forwarding** : un port reçoit et envoie des données, opération normale ;
- **Blocking** : un port provoquant une boucle, aucune donnée n'est envoyée ou reçue mais le port peut passer en mode forwarding si un autre lien tombe ;
- **Disabled** : désactivé, un administrateur peut manuellement désactiver un port s'il le souhaite.

## Phases

---

4 Phases :

1. **Élection du commutateur racine**,

   - Chaque commutateur possède une priorité en plus de son adresse MAC
   - Le commutateur avec la priorité la plus basse, devient racine.
   - En cas d’égalité, c’est l’adresse MAC la plus petite qui l’emporte.

2. **Détermination du port racine (RP) sur chacun des autres commutateurs**,

   - C’est le port qui permet d’atteindre le commutateur racine.
   - Si plusieurs ports permettent d’atteindre le commutateur racine, le port qui minimise le coût qui devient le port racine.

3. **Détermination du port désigné (DP) sur chaque segment**,

   - C’est le port qui permet d’atteindre le segment.
   - Si plusieurs ports permettent d’atteindre le même segment, le port qui minimise le coût qui devient le port désigné pour ce segment.

4. **Blocage des autres ports (BP)**.
   - Tous les ports qui ne sont ni racine ni désignés sont bloqués.

## Défaut et meilleurs solutions

Défaut de STP : Le temps de convergence (environ 30s)

Meilleurs solutions :

- Rapid Spanning Tree Protocol (RSTP)
- Per-VLAN Spanning Tree (PVST)
- Multiple Spanning Tree Protocol (MSTP)
- Shortest Path Bridging (SPB)

## Encapsulation des BPDU

---

Les BPDU (Bridge Protocol Data Units) sont des paquets **utilisés par le protocole Spanning Tree pour échanger des informations entre les commutateurs dans un réseau local (LAN)**. Ils sont utilisés pour déterminer le chemin le plus efficace pour transmettre les données dans un réseau sans boucle et garantir la stabilité du réseau.

L'encapsulation des BPDU implique le processus d'ajout des informations BPDU à une trame Ethernet standard pour les transmettre dans le réseau. La trame BPDU encapsulée comporte les éléments suivants :

**En-tête Ethernet**: Il inclut des informations sur la destination et la source de la trame, ainsi que la longueur de la trame.

**BPDU** : Les informations BPDU incluent des informations sur les ports, le coût du chemin, la racine du réseau et l'identification de l'équipement.

**Cyclic Redundancy Check (CRC)** : Il s'agit d'un algorithme de vérification de la correction des données transmises, utilisé pour détecter les erreurs de transmission.

L'encapsulation des BPDU est cruciale pour le fonctionnement du protocole Spanning Tree. Les commutateurs échangent des BPDU encapsulés pour **déterminer le chemin le plus efficace pour transmettre les données et éliminer les boucles dans le réseau**. L'encapsulation garantit également la fiabilité et la stabilité des communications dans le réseau en utilisant des mécanismes de vérification de la correction des données.
