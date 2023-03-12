---
layout: default
title: HTTP
parent: 7 - Application
grand_parent: Réseaux
has_toc: false
nav_order: 3
---

# HTTP

## Principes

---

Le protocole HTTP (Hypertext Transfer Protocol) est basé sur un principe de requêt/réponse.

- **HTTP Request** : Un client établit une connexion TCP vers un serveur (port 80) et lui envoie une requête sous la forme d'une méthode, d'une URI, d'un protocole, suivi d'un message
- **HTTP Response** : Le serveur répond par une **ligne d'état** (version de protocole + message de succès ou d'erreur) suivi d'un message contenant l'information souhaitée.

## Requête HTTP

---

## Exemple de requête HTTP

---

```plaintext
    Navigateur <--> Serveur Web

    Requête HTTP                                 Réponse HTTP
    +------------------------------+             +-----------------------------+
    |   GET /index.html HTTP/1.1   |             |   HTTP/1.1 200 OK           |
    |   Host: www.example.com      |             |   Content-Type: text/html   |
    +------------------------------+             +-----------------------------+
```

### Definitons

```
    GET : La méthode
    "/" : Le chemin
    HTTP/1.1 : Version du protocole
```

## Réponse HTTP

---

Une fois la requête reçue et interprétée, un serveur répond par un message HTTP de réponse.
La première ligne d'une réponse HTTP consiste en une phrase comportant plusieurs éléments :

- Le protocole, avec sa version
- Un code de retour numérique
- Un message décrivant la raison

Les codes de retour sont rangés par catégories :
**1xx** - **Information** : Non utilisé, pour usage futur
**2xx** - **Succès** : L'action a été correctement reçue, interprétée, et exécutée.
**3xx** - **Redirection** : Une décision supplémentaire doit être prise pour terminer la requête
**4xx** - **Erreur Client** : La requête présente une erreur de forme et ne peut être satisfaite
**5xx** - **Erreur Serveur** : La requête est valide, mais le serveur ne peut la satisfaire

## Principes de fonctionnement

---

1. Lorsqu'un utilisateur entre une URL dans son navigateur Web, celui-ci envoie une requête HTTP GET au serveur Web pour récupérer la ressource correspondante, telle qu'une page Web.

2. Le serveur Web répond à la requête en envoyant une réponse HTTP, qui peut inclure le code de statut 200 OK et le contenu de la page Web demandée.

3. Si la ressource demandée n'existe pas sur le serveur Web, le serveur renvoie un code de statut 404 Not Found au client.

4. Si le serveur rencontre une erreur lors du traitement de la requête, il peut renvoyer un code de statut 500 Internal Server Error.

5. Si l'utilisateur soumet un formulaire Web, le navigateur envoie une requête HTTP POST au serveur Web, qui peut inclure des données saisies par l'utilisateur.

6. Le serveur Web peut alors traiter les données et renvoyer une réponse HTTP appropriée, telle qu'une page de confirmation.
