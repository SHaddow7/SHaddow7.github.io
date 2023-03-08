---
layout: default
title: TCP
parent: 4 - Transport
grand_parent: Réseaux
has_toc: false
nav_order: 1
---

# Transmission Control Protocol (TCP)

## Principes

---

Le protocole TCP (Transmission Control Protocol) est inclus dans la couche 4, a couche transport. Le TCP est un protocole de transport de données utilisé pour **établir une communication fiable entre des applications sur un réseau**.

Ainsi, TCP joue un rôle crucial dans l'établissement, le maintien et la terminaison des connexions entre des applications communicantes sur un réseau de données.

Il permet également :

- Introduit la notion de port TCP (un entier entre 0 et 65535).
- Assure un transport fiable et sécurisé des données.
- Effectue la retransmission des données erronées ou non reçues.
- Fonctionne en mode connecté, ordonné et bi-directionnel.
- Permet le contrôle de flux en cas de congestion.
- Gérer la correction des erreurs, la gestion des flux de données et la gestion des connexions entre les terminaux.

## Les usages

---

Les usages les plus courants du protocole TCP incluent le transfert de fichiers, les applications de messagerie, les services de courrier électronique et la navigation web (ex : HTTP, FTP, SMB, etc…).

## Les ports

---

Les ports sont des points d'accès numériques uniques utilisés pour **identifier un canal de communication sur une machine**. Chaque service ou application en réseau peut être associé à un numéro de port spécifique. **Le numéro de port vient s'ajouter à l'adresse IP** pour créer un couple appelé **"socket TCP"**. Les ports sont identifiés par un entier **compris entre 0 et 65535**.

Lorsqu'une demande de connexion réseau est effectuée, elle est dirigée vers le port approprié pour atteindre le service ou l'application souhaité. Les ports sont utilisés pour différencier les services sur un même hôte et pour établir des connexions fiables entre les ordinateurs.

Les protocoles tels que TCP et UDP utilisent des ports pour identifier les sessions réseau et transmettre les données. Les numéros de ports courants pour les services populaires comprennent **80 pour HTTP**, **443 pour HTTPS**, **21 pour FTP**, etc.

| Noms                           | Descriptions                                          |
| ------------------------------ | ----------------------------------------------------- |
| **port connus**                | compris entre 0 et 1023 (réservés à des applications) |
| **ports enregistrés**          | compris entre 1024 et 49151                           |
| **ports dynamiques ou privés** | compris entre 49152 et 65535                          |

## Ouverture de session (3 way handshake)

---

Le principe des "3 poignées de main" (ou "3-way handshake") est un processus utilisé par le protocole TCP pour établir une connexion entre deux systèmes. Il comprend 3 étapes :

1. La machine envoie un paquet avec le drapeau "SYN" (SYNchronize) à 1 au second système pour lui demander de se synchroniser sur une séquence de numéros de séquence.

2. Le serveur répond avec un accusé de réception ACK avec le drapeau SYN à 1 "SYN-ACK".

3. La machine confirme la connexion en envoyant un paquet "ACK" pour confirmer la réception du paquet "SYN-ACK". Après cette étape, la connexion est établie et les deux systèmes peuvent commencer à échanger des données (session TCP est ouvert).

## Numéro de séquence

---

Un numéro de séquence est un identificateur utilisé dans le protocole TCP pour identifier l'ordre des segments de données transmis entre deux hôtes sur un réseau. Chaque segment de données transmis est associé à un numéro de séquence unique, permettant à l'hôte destinataire de reconstituer correctement les données envoyées.

- TCP travaille en mode "connecté"
- TCP utilise le numéro de séquence pour garder la trace des envois.
- Si un segment manque, il faut le renvoyer
- Permet d'assurer l'intégrité de la transmission de données et d'éviter les erreurs de transmission.

## Fermeture de session

---

- Une des machines envoie un paquet avec le drapeau FIN à 1. elle finit de recevoir le paquet en cours, mais ignore les suivants.
- L'autre machine envoie un accusé de réception ACK avec le drapeau FIN à 1.
- La machine informe l'application qu'un paquet FIN a été reçu, puis envoie un paquet ACK à l'autre machine.
- La session TCP est cloturée.

## Fenêtre TCP glissante ou coulissante

---

- Envoyer un ACK à chaque paquet n'est pas efficace.
- La fenêtre indique le nombre maximum d'octets que l'on peut transmettre avant de devoir recevoir un ACK pour confirmer la réception.
- La valeur de la fenêtre peut être négociée (Linux) ou imposée (Windows).

## État des ports TCP

---

Les ports TCP peuvent prendre les états suivants :

| Etats           | Descriptions                                     |
| --------------- | ------------------------------------------------ |
| **ESTABLISHED** | La session est active.                           |
| **TIME_WAIT**   | Session fermée, en attente de paquets en retard. |
| **CLOSE_WAIT**  | Session fermée, en attente de confirmation.      |

## Entête TCP

---

### Champs de l'entête TCP

| Champs                | Descriptions                                                 |
| --------------------- | ------------------------------------------------------------ |
| Port source           | 16 bits                                                      |
| Port destination      | 16 bits                                                      |
| Numéro de séquence    | 32 bits permettant de suivre la progression des échanges     |
| Numéro d'acquittement | 32 bits indiquant le prochain numéro de séquence attendu     |
| Taille de l'entête    | 4 bits indiquant la longueur de l'entête en mots de 4 octets |

### Drapeaux

| Champs | Descriptions                                                                                              |
| ------ | --------------------------------------------------------------------------------------------------------- |
| ECN    | Signale de la congestion                                                                                  |
| URG    | Signale la présence de donnée urgentes, localisation donnée par le pointeur de donnée urgente             |
| ACK    | Acquittement de la bonne réception des données                                                            |
| PUSH   | le récepteur transmet les données reçues aux couches supérieures sans attendre le remplissage des buffers |
| RST    | Réinitialisation de la connexion                                                                          |
| SYN    | Demande de connexion                                                                                      |
| FIN    | Fin de l'échange                                                                                          |

### Les autres champs

| Champs                       | Descriptions                                                       |
| ---------------------------- | ------------------------------------------------------------------ |
| Fenêtre                      | 16 bits indiquant le nombre d'octets à recevoir avant acquittement |
| Somme de contrôle            | 16 bits, calculée à partir de l'entête et des données              |
| Pointeur de données urgentes | 16 bits indiquant la position des données urgentes                 |
