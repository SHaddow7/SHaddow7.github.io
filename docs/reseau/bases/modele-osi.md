---
layout: default
title: Modèle OSI
# nav_order: 2
parent: Généralités
grand_parent: Réseaux
---

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

### Les rôles des couches OSI

| Couches | Noms               | Fonctions                          | Ex. Protocoles | Type d'adresse |
| :-----: | ------------------ | ---------------------------------- | -------------- | -------------- |
|    7    | Application        | Interactions avec l'utilisateur    | FTP            | Hostname       |
|    6    | Presentation       | Représentation des données         | XDR, SMB       | Hostname       |
|    5    | Session            | Synchronisation de processus       | SOCKS, RPC     | Socket         |
|    4    | Transport          | Intégrité de bout en bout          | TCP, UDP       | Port           |
|    3    | Réseau             | Routage et adressage               | IP, IGMP, OSPF | Adresse IP     |
|    2    | Liaison de Données | Communication de nœud à nœud       | MPLS           | Adresse MAC    |
|    1    | Physique           | Bits bruts sur le support physique | TIA-323-F      | N/A            |

### L'encapsulation - A détailler

- Quand les données sont envoyées à la couche inférieure, chaque
  couche ajoute son entête/suffixe.
- Quand les données remontent à la couche supérieure, chaque couche
  doit supprimer son entête/suffixe.
