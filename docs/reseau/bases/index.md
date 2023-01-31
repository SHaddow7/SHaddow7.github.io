---
layout: default
title: Généralités
nav_order: 1
parent: Réseaux
has_children: true
has_toc: false
---

# Généralités

Un **réseau** est l'ensemble des moyens matériels et logiciels mis en oeuvre pour assurer les communications entre ordinateurs, stations de travail et terminaux informatiques. Il utilise un médium de communication pour faire voyager les informations. Plusieurs réseaux peuvent être connectés entre eux pour créer des réseaux de réseaux.
{: .p-4 }

## Type de transmission

| Types de transmissions                          | Description                                         |
| :---------------------------------------------- | --------------------------------------------------- |
| <span style='font-size:18px'>`Unicast`</span>   | Transmission entre une machine et une (seule) autre |
| <span style='font-size:18px'>`Broadcast`</span> | Transmission entre une machine et toutes les autres |
| <span style='font-size:18px'>`Multicast`</span> | Transmission entre une machine et plusieurs autres  |

## Sens de transmission

| Types de transmissions                                        | Description                                             |
| :------------------------------------------------------------ | ------------------------------------------------------- |
| <span style='font-size:18px'>`Simplex`</span>                 | Une station ne peut qu'émettre et l'autre que recevoir. |
| <span style='font-size:18px'>`Half-Duplex`</span>             | Chaque station peut émettre, mais pas en même temps     |
| <span style='font-size:18px'>`Full-Duplex (ou Duplex)`</span> | Chaque station peut émettre et recevoir en même temps.  |

## Topologies de réseaux

| Topologies                                               | Descriptions    |
| :------------------------------------------------------- | --------------- |
| <span style='font-size:18px'>`En boucle / anneau`</span> |                 |
| <span style='font-size:18px'>`En étoile`</span>          | le plus utilisé |
| <span style='font-size:18px'>`En bus`</span>             |                 |
| <span style='font-size:18px'>`En maillage`</span>        |                 |
| <span style='font-size:18px'>`Hiérarchique`</span>       |                 |

## Types de réseaux

{: .pt-4 }
<span style='font-size:18px'>`Local Area Network (LAN)`</span> :
Réseau local limité à un seul site géographique, dans une entreprise. Toutes les machines de ce réseau sont reliées directement via des commutateurs (switches).

<span style='font-size:18px'>`Wide Area Network (WAN)`</span> :
Réseau grande distance, par opposition au LAN. Constitué de plusieurs LAN reliés entre eux par des routeurs (Ex. : Internet, Renater, RIE,...).

<span style='font-size:18px'>`Metropolitan Area Network (MAN)`</span> :
Réseau de LANs reliés et distants de quelques kilomètres. Le but étant de relier les différents sites en très haut débit.

## Commutation

### Commutation de circuits

{: .definition}

> Etablissement d'un circuit fixe au début de la conversation entre émetteur et récepteur (RTC terminé en 2022)
> {: .m-2 }

### Commutation de paquets

{: .definition}

> Découpage du message et envoi des fragments qui peuvent prendre des chemins différents.
> {: .m-2 }

### Commutation d'étiquettes

```plaintext
    • MPLS Multiple Protocol Label Switching
    • Ajout de labels supplémentaires (32 bits) aux datagrammes pour :
    • Gérer plus facilement les différents types de trafics
    • Apporter à IP un mode connecté
    • Accélérer le traitement des datagrammes
    • Permettre l'utilisation de différents protocoles de niveau 2 (ATM, Ethernet, PPP…)
    • Utilisé par le RIE et les fournisseurs d'accès
```
