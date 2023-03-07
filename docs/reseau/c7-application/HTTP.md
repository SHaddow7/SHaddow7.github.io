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
