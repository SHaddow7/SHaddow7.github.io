---
layout: default
title: Routage
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
---

Couche 3 - Routage
• Principes
• Mécanisme qui permet de déterminer le chemin que doivent suivre les
paquets pour arriver à destination.
• Un équipement assurant la fonction de routage prend en charge le
réacheminement des paquets qui ne lui sont pas destinés.
• Le routage IP est effectué pas à pas (hop by hop).
Chaque routeur détermine à quel voisin il transmet le paquet en fonction
de l'adresse destinataire et de sa table de routage.
• La gestion du flux et des erreurs est repoussée aux extrémités grâce à
TCP.
• Une machine ordinaire (Linux ou Windows) peut se comporter comme un
routeur.

Couche 3 - Internet Protocol - Routage
• Table de routage
• Chaque machine contient une table de routage qui indique ce qu'il faut
faire de chaque paquet en fonction de l'adresse destinataire.
• L'utilisation de cette table se fait du masque le plus long
(ici : 255.255.255.0) au masque le plus petit (ici : 0.0.0.0)
• Pour chaque ligne, Il faut effectuer un ET logique entre
l'adresse destinataire et le masque.
• Si le résultat est égal à l'adresse réseau, la ligne doit être utilisée :
• soit en envoyant le paquet à la passerelle si elle est présente.
• soit directement sur l'interface.

Couche 3 - Internet Protocol - Routage
• Exemple de table de routage
• Linux (route)
• Windows (route print)

• Traceroute
• Envoi de pings successifs en partant d'un TTL à 1 et en augmentant de 1
à chaque essai.
• Permet de tracer la route empruntée par le paquet.
• Permet de récupérer les adresses des routeurs intermédiaires.
(sauf s'ils sont configurés pour ne pas répondre)

• Dans nmtui, menu "Modifier une connexion"
