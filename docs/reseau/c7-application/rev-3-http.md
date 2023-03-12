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

Il est généralement utilser pour :

- La navigation web
- Les API RESTful
- L'interaction avec les services web

## Fonctionnement du protocole HTTP

---

### Méthodes HTTP (GET, POST, PUT, DELETE, etc.)

| Methode | Description                                                                                                |
| :------ | :--------------------------------------------------------------------------------------------------------- |
| HEAD    | identique à GET, sauf qu'elle ne demande que la transmission de l'entête de la ressource                   |
| GET     | signifie « **récupérer** » le contenu de la ressource                                                      |
| POST    | utilisée pour indiquer au serveur de soumettre l'entité contenue dans le message à la ressource identifiée |
| PUT     | demande l'alias d'un nom de domaine                                                                        |

### Une requête HTTP

Une requête HTTP consiste en une phrase comportant plusieurs éléments :

- Une méthode
- Une URI
- Un protocole, avec sa version

### Syntaxe d'une requête HTTP

```plaintext
    Requête HTTP
    +------------------------------+
    |   GET /index.html HTTP/1.1   |
    |   Host: www.example.com      |
    +------------------------------+
```

### Syntaxe d'une réponse HTTP

```plaintext
    Réponse HTTP
    +-----------------------------+
    |   HTTP/1.1 200 OK           |
    |   Content-Type: text/html   |
    +-----------------------------+
```

Une fois la requête reçue et interprétée, un serveur répond par un message HTTP de réponse.
La première ligne d'une réponse HTTP consiste en une phrase comportant plusieurs éléments :

- Le protocole, avec sa version
- Un code de retour numérique
- Un message décrivant la raison

Les codes de retour sont rangés par catégories :

- **1xx** - **Information** : Non utilisé, pour usage futur
- **2xx** - **Succès** : L'action a été correctement reçue, interprétée, et exécutée.
- **3xx** - **Redirection** : Une décision supplémentaire doit être prise pour terminer la requête
- **4xx** - **Erreur Client** : La requête présente une erreur de forme et ne peut être satisfaite
- **5xx** - **Erreur Serveur** : La requête est valide, mais le serveur ne peut la satisfaire

## Codes de retour

---

| Code | Raison                | Signification          |
| ---- | --------------------- | ---------------------- |
| 200  | OK                    | OK                     |
| 201  | Created               | Créé                   |
| 202  | Accepted              | Accepté                |
| 204  | No Content            | Pas de contenu         |
| 301  | Moved Permanently     | Changement définitif   |
| 302  | Moved Temporarily     | Changement temporaire  |
| 304  | Not Modified          | Non modifié            |
| 400  | Bad Request           | Requête incorrecte     |
| 401  | Unauthorized          | Non autorisé           |
| 403  | Forbidden             | Interdit               |
| 404  | Not Found             | Non trouvé             |
| 500  | Internal Server Error | Erreur interne serveur |
| 501  | Not Implemented       | Non implémenté         |
| 502  | Bad Gateway           | Erreur de routeur      |
| 503  | Service Unavailable   | Indisponnible          |
