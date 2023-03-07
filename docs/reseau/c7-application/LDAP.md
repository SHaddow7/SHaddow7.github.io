---
layout: default
title: LDAP
parent: 7 - Couche
grand_parent: Réseaux
has_toc: false
# nav_order: 0
---

# LDAP

## Définition

---

Le protocole LDAP (Lightweight Directory Access Protocol) est un protocole de communication client-serveur de la couche application <b>utilisé pour accéder à des services d'annuaire</b>. Les services d'annuaire sont des bases de données qui contiennent des informations sur les utilisateurs, les groupes et les ressources dans un réseau.

## Définition - (+ approfondi)

---

Le LDAP est utilisé pour récupérer, ajouter, modifier et supprimer des entrées d'annuaire. Les entrées d'annuaire sont organisées hiérarchiquement en un arbre de nœuds appelé DIT (Directory Information Tree).

Le LDAP utilise un modèle de données basé sur des attributs pour stocker des informations dans les entrées d'annuaire. Chaque attribut a un nom, un type de données et un ou plusieurs valeurs.

Le LDAP utilise des filtres de recherche pour trouver des entrées d'annuaire correspondant à certains critères. Les filtres de recherche peuvent être basés sur des attributs spécifiques, tels que le nom d'utilisateur ou l'adresse e-mail, ou sur des combinaisons de critères.

Le LDAP utilise des protocoles de sécurité tels que SSL/TLS pour crypter les communications entre le client et le serveur, et SASL pour l'authentification.

Le LDAP est utilisé dans de nombreux environnements, tels que les réseaux d'entreprise, les services d'authentification pour les applications Web, et les systèmes de gestion d'identité.

## Principes de fonctionnement

---

1. Un administrateur réseau peut utiliser une interface LDAP pour ajouter des utilisateurs à un annuaire d'entreprise. L'administrateur peut entrer les informations de l'utilisateur, telles que le nom, l'adresse e-mail et le mot de passe, dans l'interface LDAP, qui enverra une demande au serveur LDAP pour ajouter une nouvelle entrée à l'annuaire.

2. Un utilisateur peut utiliser un client LDAP pour rechercher d'autres utilisateurs dans un annuaire d'entreprise. L'utilisateur peut spécifier des critères de recherche tels que le nom ou l'adresse e-mail, et le client LDAP enverra une demande de recherche au serveur LDAP. Le serveur LDAP renverra une liste d'entrées correspondant aux critères de recherche, que le client LDAP peut afficher à l'utilisateur.

3. Un système de gestion d'identité peut utiliser le LDAP pour stocker des informations sur les utilisateurs, telles que les noms d'utilisateur et les mots de passe. Lorsqu'un utilisateur tente de se connecter à une application, le système de gestion d'identité peut utiliser le LDAP pour authentifier l'utilisateur en vérifiant ses informations d'identification. Si les informations d'identification sont correctes, le système de gestion d'identité peut accorder l'accès à l'application.
