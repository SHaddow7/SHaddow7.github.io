---
layout: default
title: La fibre optique
parent: 1 - Liaison Physique
grand_parent: Réseaux
---

# La fibre optique

## Avantages

#### Avantages

- Insensibilité aux perturbations électromagnétiques
- Débits plus élevés sur de plus longues distances
- Niveau très fort de résistance au piratage physique

#### Obligatoire, quand :

- La longueur du lien est supérieure à 90m.
- La rocade relie 2 bâtiments distincts.

Par rapport au cuivre, la fibre apporte plus d’évolutivité et de sécurité.
Il existe plusieurs types de fibre (monomode, multimodes, ...)

## Les types de fibres

---

<span style='font-size:18px'>`Fibre monomode`</span>

Elle utilise un seul mode de propagation de la lumière pour transmettre des données à très haut débit sur de longues distances. Elle est utilisée pour les réseaux de transport de données de longue distance, les réseaux de télécommunications et les applications industrielles.

---

<span style='font-size:18px'>`Fibre multimode`</span>

cette fibre utilise plusieurs modes de propagation de la lumière pour transmettre des données à des débits moins élevés sur des distances plus courtes. Les fibres multimodes sont généralement utilisées pour les réseaux locaux (LAN) et les applications de courtes distances.

---

<span style='font-size:18px'>`Fibre Graded Index multimode`</span>

cette fibre utilise un indice de réfraction graduel pour réduire les effets de dispersion modale et augmenter la distance de transmission.

---

<span style='font-size:18px'>`Fibre à dispersion compensée`</span>

cette fibre utilise des matériaux spéciaux pour compenser les effets de dispersion modale et augmenter la distance de transmission.

---

<span style='font-size:18px'>`Fibre à dispersion non linéaire`</span>

cette fibre utilise des matériaux spéciaux pour réduire les effets de dispersion non linéaire, permettant des débits de transmission plus élevés.

---

<span style='font-size:18px'>`Fibre à haute performance `</span>

cette fibre utilise des matériaux spéciaux pour augmenter la capacité de transmission de la fibre, permettant des débits de transmission très élevés.

### Les composants

#### Jarretière optique avec connecteurs de type LC

Une jarretière optique est un équipement qui permet de connecter des fibres optiques ensemble pour créer une liaison physique entre des équipements de réseau tels que des commutateurs, des routeurs et des concentrateurs. Les jarretières optiques permettent de connecter des fibres optiques de différentes tailles et types, et de maintenir une connectivité optique stable et fiable.

Les jarretières optiques sont généralement utilisées pour connecter des équipements de réseau dans des centres de données, des réseaux étendus et des réseaux de télécommunications.

Il existe deux principaux types de jarretières optiques : les jarretières à fente simple et les jarretières à fente multiple. Les jarretières à fente simple permettent de connecter une seule fibre optique à la fois, tandis que les jarretières à fente multiple permettent de connecter plusieurs fibres optiques simultanément.

#### Convertisseur optique

Un convertisseur optique est un équipement de réseau qui permet de convertir des signaux électriques en signaux optiques ou inversement, pour permettre la communication entre différents types de réseaux ou de dispositifs. Il permet de connecter des équipements qui n'utilisent pas les mêmes technologies de transmission ou qui ont des interfaces différentes.

Il existe deux principaux types de convertisseurs optiques : les convertisseurs optiques-électriques (O/E) et les convertisseurs électriques-optiques (E/O).

Les convertisseurs optiques-électriques convertissent les signaux optiques en signaux électriques pour permettre la communication entre des dispositifs utilisant des fibres optiques et des dispositifs utilisant des câbles électriques.

Les convertisseurs électriques-optiques convertissent les signaux électriques en signaux optiques pour permettre la communication entre des dispositifs utilisant des câbles électriques et des dispositifs utilisant des fibres optiques.

#### Adaptateur Gbic ou miniGbic ou SFP

Un adaptateur GBIC (Gigabit Interface Converter) ou SFP (Small Form-factor Pluggable) est un équipement de réseau qui permet de connecter des dispositifs de réseau utilisant des fibres optiques à des commutateurs ou des routeurs. Ces adaptateurs se connectent à un port de commutateur ou de routeur via une prise de module SFP ou GBIC.

Les adaptateurs GBIC ou SFP sont généralement utilisés pour connecter des équipements de réseau qui utilisent des fibres optiques à des commutateurs ou des routeurs qui ne prennent pas en charge directement les fibres optiques. Ils permettent également de connecter des équipements de réseau qui utilisent des types de fibres différentes ou des protocoles de communication différents.

Les adaptateurs GBIC se connectent à un port de commutateur ou de routeur via une prise de module GBIC. Les adaptateurs SFP se connectent via une prise SFP. Il existe également des adaptateurs mini-GBIC qui sont plus petits que les adaptateurs GBIC standard et peuvent être utilisés dans des espaces de montage restreints.

Il est important de noter que les adaptateurs GBIC et SFP doivent être compatibles avec les types de fibres optiques et les protocoles de communication utilisés pour garantir une transmission de données stable et fiable.

### Les connectiques

| Connectiques         | Type connecteur         | Descriptions                             |
| -------------------- | ----------------------- | ---------------------------------------- |
| `Connecteur SC`      | simple fente            | pour les applications de courte distance |
| `Connecteur LC`      | simple fente            | pour les applications de courte distance |
| `Connecteur ST`      | simple fente            | pour les applications de courte distance |
| `Connecteur FC`      | connecteur à baïonnette | pour les applications à haut débit       |
| `Connecteur MTP/MPO` | multiples fentes        | pour les applications à haut débit       |
| `Connecteur SFP `    | modulaire               | pour les applications à haut débit       |
