---
layout: default
title: SMTP
parent: 7 - Application
grand_parent: Réseaux
has_toc: false
nav_order: 5
---

# SMTP

## Définition

---

Le protocole SMTP (Simple Mail Transfer Protocol) est un protocole de communication client-serveur de la couche application <b>utilisé pour envoyer et recevoir des e-mails sur un réseau</b>. Le SMTP est principalement utilisé pour l'envoi d'e-mails, tandis que d'autres protocoles, tels que POP et IMAP, sont utilisés pour la réception d'e-mails.

## Définition - (+ approfondi)

---

Le SMTP utilise une architecture client-serveur dans laquelle le client SMTP envoie des messages à un serveur SMTP, qui les transmet ensuite au destinataire final.

Le SMTP utilise une syntaxe de commande simple pour échanger des informations entre le client et le serveur. Les commandes SMTP les plus courantes incluent HELO, MAIL FROM, RCPT TO et DATA.

Le SMTP utilise un format de message standard pour les e-mails, qui inclut un en-tête et un corps de message. L'en-tête contient des informations sur le destinataire, l'expéditeur, le sujet et d'autres informations pertinentes, tandis que le corps de message contient le texte de l'e-mail lui-même.

Le SMTP utilise des protocoles de sécurité tels que SSL/TLS pour crypter les communications entre le client et le serveur, et SASL pour l'authentification.

Le SMTP est utilisé dans de nombreux environnements, tels que les réseaux d'entreprise, les services de messagerie en ligne, et les serveurs de messagerie pour les sites Web.

## Principes de fonctionnement

---

1. Un utilisateur peut utiliser un client de messagerie pour envoyer un e-mail à un destinataire. Le client de messagerie utilise le SMTP pour se connecter au serveur SMTP du fournisseur de messagerie de l'utilisateur, et envoie ensuite le message en utilisant les commandes SMTP appropriées. Le serveur SMTP du fournisseur de messagerie transmet ensuite le message au serveur SMTP du destinataire, qui le remet ensuite au destinataire final.

2. Un administrateur réseau peut configurer un serveur SMTP pour recevoir des e-mails pour un domaine spécifique. Le serveur SMTP peut ensuite transmettre les e-mails reçus aux destinataires appropriés sur le réseau. L'administrateur réseau peut également configurer des filtres pour bloquer les e-mails non désirés ou malveillants.

3. Un développeur de site Web peut utiliser le SMTP pour envoyer des e-mails à partir de son application. Par exemple, un site Web de commerce électronique peut envoyer des e-mails de confirmation de commande ou de suivi de livraison en utilisant le SMTP pour se connecter au serveur SMTP approprié et envoyer les e-mails.
