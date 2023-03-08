---
layout: default
title: Généralités
parent: Réseaux
has_children: true
has_toc: false
---

# Généralités

## Réseau

---

Un **réseau** est l'**ensemble des moyens matériels et logiciels mis en oeuvre pour assurer les communications entre ordinateurs, stations de travail et terminaux informatiques**. Il utilise un médium de communication pour faire voyager les informations. Plusieurs réseaux peuvent être connectés entre eux pour créer des réseaux de réseaux.
{: .p-4 }

## Type de transmission

---

| Types de transmissions                 | Description                                         |
| :------------------------------------- | --------------------------------------------------- |
| <span class='fs-18'>`Unicast`</span>   | Transmission entre une machine et une (seule) autre |
| <span class='fs-18'>`Broadcast`</span> | Transmission entre une machine et toutes les autres |
| <span class='fs-18'>`Multicast`</span> | Transmission entre une machine et plusieurs autres  |

## Sens de transmission

---

| Types de transmissions                               | Description                                             |
| :--------------------------------------------------- | ------------------------------------------------------- |
| <span class='fs-18'>`Simplex`</span>                 | Une station ne peut qu'émettre et l'autre que recevoir. |
| <span class='fs-18'>`Half-Duplex`</span>             | Chaque station peut émettre, mais pas en même temps     |
| <span class='fs-18'>`Full-Duplex (ou Duplex)`</span> | Chaque station peut émettre et recevoir en même temps.  |

## Topologies de réseaux

---

| Topologies                                      | Descriptions    |
| :---------------------------------------------- | --------------- |
| <span class='fs-18'>`En boucle / anneau`</span> |                 |
| <span class='fs-18'>`En étoile`</span>          | le plus utilisé |
| <span class='fs-18'>`En bus`</span>             |                 |
| <span class='fs-18'>`En maillage`</span>        |                 |
| <span class='fs-18'>`Hiérarchique`</span>       |                 |

## Types de réseaux

---

{: .pt-4 }
<span class='fs-18'>`Local Area Network (LAN)`</span> :
Réseau local limité à un seul site géographique, dans une entreprise. Toutes les machines de ce réseau sont reliées directement via des commutateurs (switches).

<span class='fs-18'>`Wide Area Network (WAN)`</span> :
Réseau grande distance, par opposition au LAN. Constitué de plusieurs LAN reliés entre eux par des routeurs (Ex. : Internet, Renater, RIE,...).

<span class='fs-18'>`Metropolitan Area Network (MAN)`</span> :
Réseau de LANs reliés et distants de quelques kilomètres. Le but étant de relier les différents sites en très haut débit.

## Commutation

---

### Commutation de circuits

{: .definition}

> Etablissement d'un circuit fixe au début de la conversation entre émetteur et récepteur (RTC terminé en 2022)
> {: .m-2 }

### Commutation de paquets

{: .definition}

> Découpage du message et envoi des fragments qui peuvent prendre des chemins différents.
> {: .m-2 }

### Commutation d'étiquettes

{: .definition}

> Technique de routage qui consiste à ajouter une étiquette à chaque paquet de données, qui indique le chemin à suivre pour atteindre sa destination. Cette étiquette permet aux équipements de commutation de router les paquets plus rapidement et plus efficacement que les méthodes traditionnelles de routage IP.
