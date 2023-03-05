---
layout: default
title: Modèle OSI
nav_order: 3
parent: Généralités
grand_parent: Réseaux
---

## Le modèle OSI - Open Systems Interconnection

---

### Principes

Le modèle OSI a été publié en 1978 par l'ISO (Organisation Internationale de Normalisation). Le but de ce modèle est d'éviter le blocage des systèmes propriétaires en fournissant un cadre général à respecter pour les intervenants dans le monde du réseau. Il permet également de fournir des normes techniques pour les communications en réseau.

Le modèle OSI est découpé en 7 couches, en respectant des principes tels :

- chaque couche a un rôle particulier qu'aucune autre couche ne doit réaliser,
- une couche donnée ne communique qu'avec les couches immédiatement adjacentes,
- et les communications entre les couches sont réduites au maximum.

Les 7 couches du modèle OSI sont les suivantes :

- 1 : La couche physique : elle est responsable de la transmission des données sur le support de communication (câble, fibre optique, etc.) et définit les caractéristiques électriques, mécaniques et fonctionnelles de ce support.
- 2 : La couche liaison de données : elle assure la transmission de données fiables entre deux nœuds du réseau en gérant les erreurs de transmission et en synchronisant les flux de données.
- 3 : La couche réseau : elle permet l'acheminement des paquets de données entre les différents nœuds du réseau en utilisant des adresses logiques pour identifier les destinataires.
- 4 : La couche transport : elle assure le transfert des données entre les applications source et destination en gérant les connexions et en assurant le contrôle de la fiabilité et du débit des données échangées.
- 5 : La couche session : elle permet l'ouverture, la gestion et la fermeture des sessions de communication entre les applications.
- 6 : La couche présentation : elle assure la conversion des données entre les formats utilisés par les différentes applications et permet la représentation des données de manière indépendante des systèmes utilisés.
- 7 : La couche application : elle permet aux applications de communiquer entre elles en utilisant les services offerts par les couches inférieures du modèle OSI.

Chaque couche du modèle OSI est responsable d'un ensemble de tâches spécifiques et les couches communiquent entre elles pour assurer la transmission des données sur le réseau.

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

### Principe d'encapsulation

Le principe d'encapsulation permet de transférer des données d'une couche à l'autre en ajoutant des en-têtes qui contiennent des informations sur la transmission. Chaque couche ajoute son propre en-tête/suffixe aux données existantes avant de les transférer à la couche suivante, et le processus inverse se produit lors de la réception des données. Cela permet de garder les données organisées et structurées lors de leur transfert à travers le réseau, et chaque couche peut effectuer sa propre tâche sans se préoccuper des autres couches.

- Quand les données sont envoyées à la couche inférieure, chaque couche ajoute son entête/suffixe.
- Quand les données remontent à la couche supérieure, chaque couche doit supprimer son entête/suffixe.
