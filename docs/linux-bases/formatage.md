---
layout: default
title: Formatages
parent: Les Bases
nav_order: 5
---

## Formatages des dates

```bash

# Commandes:                                     # Résultats :
date                                             #  Lundi 09 janvier 2023 20:52 ...
date -d "2000-11-22 09:10:15"                    #  Permet de changer la date de l'os
date +"Annee: %Y, Mois: %m, Jour: %d"            #  Annee: 2023, Mois: 01, Jour: 09
date "+DATE: %D%nHEURE: %T"                      #  DATE: 09/01/23 \n HEURE: 20:56:..
date +"%V semaines écoulées, année en cours %Y"  #  02 semaines écoulées, année en cours 2023
date +'%d-%m-%Y à %H h %M m %S s'                #  le 09-01-2023 à 20 h 52 m 41 s
date +'%d-%m-%Y %T'                              #  09-01-2023 20:52:41
date +'%d-%m-%Y'                                 #  09-01-2023
date +'%H:%M:%S'                                 #  20:52:41
date -d @1623152000                              #  Convertis un timestamp UNIX en date
                                                 #  mar. 08 juin 2021 07:33:20 EDT

```
