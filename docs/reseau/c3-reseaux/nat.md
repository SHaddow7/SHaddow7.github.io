---
layout: default
title: NAT
parent: 3 - Réseaux
grand_parent: Réseaux
has_toc: false
---

Couche 3 - Internet Protocol - NAT
• Principes
• Du fait du manque d'adresses IPV4 publiques, il a été mis en place la
translation d'adresses (NAT)
• En NAT statique, le routeur remplace l'adresse privée de la machine par
une adresse publique obtenue auprès du FAI, ce qui ne corrige pas le
problème de la pénurie d'adresses
• En NAT dynamique, on utilise le N° de port TCP ou UDP pour partager
une seule adresse IP publique entre plusieurs machines qui possèdent
des IP privées différentes

NAT sortant (SNAT)
• Imaginons 2 stations possédant chacune une adresse privée, qui
souhaitent joindre un serveur Web qui écoute sur son port 80.
• La NAT consiste à remplacer les adresses privées par l'adresse publique
de la Box (routeur) : 87.1.2.3 dans l'exemple.
• Problème lors de la réponse par le serveur : le routeur ne saura pas vers
quelle station renvoyer le paquet si le hasard a fait que les 2 stations ont
utilisé le même N° de port privé (ici le 45000).

NAT / PAT
(Network Address Translation / Port Address Translation)
• En utilisant la NAT/PAT, il y aura translation d'adresse IP,
mais aussi translation de port au niveau du routeur.
• Au retour le routeur sait maintenant vers quelle station envoyer le
paquet, car il maintient une table de correspondance interne.

NAT Entrant (DNAT) ou Redirection de port (Port forwarding)
• Un client extérieur veut accéder à un serveur web qui possède l'adresse
privée 192.168.0.1
• Il ne connaît que l'adresse publique du routeur 87.1.2.3 qui n'est pas un
serveur web
• Il faut configurer sur le routeur une redirection du port 80 vers l'adresse
192.168.0.1 et le port 80
• Utile également pour un serveur FTP ou un jeu...
