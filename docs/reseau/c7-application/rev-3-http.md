---
layout: default
title: HTTP
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
# nav_order: 0
---

# HTTP

## Définition

---

Le HTTP (Hypertext Transfer Protocol) est un protocole de communication client-serveur de la couche application <b>utilisé pour transférer des données sur le World Wide Web (WWW)</b>. Il est utilisé pour récupérer des ressources telles que des pages Web, des images et des vidéos à partir de serveurs Web.

## Définition - (+ approfondi)

---

Le HTTP est un protocole sans état, ce qui signifie que chaque demande envoyée par le client au serveur est traitée indépendamment des demandes précédentes. Par conséquent, chaque demande contient toutes les informations nécessaires pour traiter la demande, y compris les cookies, les en-têtes HTTP et les paramètres de requête.

Le HTTP utilise des méthodes de requête pour définir l'action à effectuer sur les ressources du serveur. Les méthodes de requête les plus couramment utilisées sont GET, POST, PUT, DELETE, HEAD, OPTIONS et TRACE.

Le HTTP utilise des codes de statut pour indiquer l'état de la réponse du serveur à une demande du client. Les codes de statut les plus couramment utilisés sont 200 OK (la demande a réussi), 404 Not Found (la ressource demandée n'existe pas) et 500 Internal Server Error (une erreur s'est produite sur le serveur).

Le HTTP utilise des en-têtes de requête et de réponse pour transmettre des informations supplémentaires sur la demande et la réponse. Les en-têtes HTTP peuvent inclure des informations telles que la langue préférée du client, le type de contenu de la réponse et la date et l'heure de la dernière modification de la ressource.

Le HTTPS (HTTP Secure) est une version sécurisée du protocole HTTP qui utilise une couche de transport sécurisée (TLS/SSL) pour crypter les données envoyées entre le client et le serveur. Il est utilisé pour garantir que les données sensibles telles que les noms d'utilisateur et les mots de passe ne sont pas interceptées par des tiers.

## Principes de fonctionnement

---

1. Lorsqu'un utilisateur entre une URL dans son navigateur Web, celui-ci envoie une requête HTTP GET au serveur Web pour récupérer la ressource correspondante, telle qu'une page Web.

2. Le serveur Web répond à la requête en envoyant une réponse HTTP, qui peut inclure le code de statut 200 OK et le contenu de la page Web demandée.

3. Si la ressource demandée n'existe pas sur le serveur Web, le serveur renvoie un code de statut 404 Not Found au client.

4. Si le serveur rencontre une erreur lors du traitement de la requête, il peut renvoyer un code de statut 500 Internal Server Error.

5. Si l'utilisateur soumet un formulaire Web, le navigateur envoie une requête HTTP POST au serveur Web, qui peut inclure des données saisies par l'utilisateur.

6. Le serveur Web peut alors traiter les données et renvoyer une réponse HTTP appropriée, telle qu'une page de confirmation.

• Principes
• Le protocole HTTP est basé sur un principe requête/réponse :
• HTTP Request : Un client établit une connexion TCP vers un serveur (par
défaut sur le port 80) et lui envoie une requête sous la forme d'une méthode,
d'une URI, d'un protocole, suivi d'un message
• HTTP Response : Le serveur répond, au travers de la connexion TCP ouverte
par le client, par une ligne d'état, incluant la version de protocole et un
message de succès ou d'erreur, suivi d'un message contenant l'information
souhaitée.

• Requête HTTP
Une requête HTTP consiste en une phrase comportant plusieurs éléments :
• Une méthode
• La méthode appliquée à la ressource : « GET », « HEAD », « POST ».
• Les serveurs renverront le code 501 (non implémenté) si la méthode est
inconnue (non implémentée).
• La méthode GET signifie « récupérer » le contenu de la ressource.
• La méthode HEAD est identique à la méthode GET, sauf qu'elle ne demande
que la transmission de l'entête de la ressource (Interrogation e la taille avant
téléchargement, par exemple)
• La méthode POST est utilisée pour indiquer au serveur de soumettre l'entité
contenue dans le message à la ressource identifiée par l'URI-visée.
• D'autres méthodes existent, mais sont moins utilisées sur les sites ordinaires.
• Une URI
• Un protocole, avec sa version
• Requête HTTP
Une requête HTTP consiste en une phrase comportant plusieurs éléments :
• Une méthode
• Une URI
• L'identificateur de cette ressource : l'URI identifie la ressource sur laquelle doit
être appliquée la méthode.
• Dans le cas d'un serveur web, c'est un chemin d'accès au format Unix (Path)
• Le protocole, avec sa version
La phrase se termine normalement par un CRLF (Nouvelle ligne Windows), mais tous
les serveurs acceptent également le LF seul (Nouvelle ligne Unix).

• Exemple de requête HTTP
GET / HTTP/1.1
GET /pub/WWW/TheProject.html HTTP/1.0

• Réponse HTTP
Une fois la requête reçue et interprétée, un serveur répond par un message HTTP de
réponse.
La première ligne d'une réponse HTTP consiste en une phrase comportant plusieurs
éléments :
• Le protocole, avec sa version
• Un code de retour numérique
• Un message décrivant la raison
Les codes de retour sont rangés par catégories :
1xx - Information : Non utilisé, pour usage futur
2xx - Succès : L'action a été correctement reçue, interprétée, et exécutée.
3xx - Redirection : Une décision supplémentaire doit être prise pour terminer la requête
4xx - Erreur Client : La requête présente une erreur de forme et ne peut être satisfaite
5xx - Erreur Serveur : La requête est valide, mais le serveur ne peut la satisfaire

• Exemple de réponse HTTP
HTTP/1.1 200 Ok
HTTP/1.1 404 Not Found

• Exemples de codes de retour

• Entêtes
• Les entêtes HTTP permettent au client et au serveur de transmettre des
informations supplémentaires avec la requête ou la réponse.
• Elles ne sont pas visibles dans le code source de la page, mais sont
interprétées par le client et le serveur.
• Une ligne vide (\n ou \r\n) est insérée entre les entêtes et le contenu.
https://developer.mozilla.org/fr/docs/Web/HTTP/Headers

• Exemple d’entête HTTP

• Sécurité
• HTTP circule en clair sur le réseau, ce qui n'est pas gênant pour une
grande partie des applications de HTTP : sites web institutionnels ou
d'information, etc.
• Un standard ouvert et largement répandu, HTTPS, permet d'échanger
des informations confidentielles. Il ne s'agit pas d'un nouveau protocole,
mais de l'utilisation de HTTP sur une couche sécurisée : SSL.
• L'URI commencera alors par https://, et le port – s'il n'est pas explicité –
sera 443 par défaut.

• Certificats
• HTTPS utilise des certificats qui sont
authentifiés par des Autorités de
Certification (AC) qui signent le
certificat.
• Le navigateur vérifie l’authenticité du
certificat lors de son usage.
• Certificats
• La DGFiP utilise des certificats pour ses sites internes.
• Les postes DGFiP ont plusieurs autorités internes de certification
installées par défaut :
• AC_DGFIP_Serveur
• AC Racine Finances Publiques
• AC DGFIP Ressources
