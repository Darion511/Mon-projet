
# ZEDUCSPACE

## Introduction

MON Miam Miam est une application web développée pour le restaurant ZeDuc@Space, un lieu de prédilection pour les étudiants de l'UCAC-ICAM à Yansoki. Niché au sommet de la résidence "La Terrasse", ce restaurant offre non seulement de délicieuses options de repas, mais également un espace de divertissement. Pour répondre à la demande croissante et améliorer la gestion des commandes, une solution numérique a été envisagée. Le projet a été réalisé par une équipe de six étudiants, utilisant exclusivement React pour le front-end et PHP natif pour le back-end.

## Objectifs du Projet

L'application vise à :
- Simplifier le processus de commande en ligne pour les clients.
- Optimiser la gestion des livraisons et des réservations sur place.
- Offrir un système de fidélité avec des points et un programme de parrainage.
- Permettre une gestion efficace des menus, des promotions et des événements.
- Assurer un suivi en temps réel des commandes et des statistiques de vente.

## Prérequis Techniques

Pour exécuter cette application, il est nécessaire d'avoir les éléments suivants installés :
- React (pour la gestion des dépendances front-end)
- PHP (version 8.2.12)
- Serveur Apache (pour l'exécution du code PHP)
- Base de données MySQL

## Installation

1. Cloner le dépôt GitHub :
   
   git clone https://github.com/Darion511/Mon-projet.git
   
2. Installer les dépendances front-end :
   
   cd zeducspace/web
   npm install
   
3. Configurer le serveur back-end :
   - Placer le dossier `/backend` dans le répertoire de votre serveur Apache.
   - Configurer le fichier `config.php` pour correspondre aux paramètres de votre base de données.
4. Créer la base de données MySQL :
   - Importer le fichier `cre_Grpe8.sql` pour créer les tables nécessaires.
5. Lancer l'application :
   - Exécuter le serveur Apache pour le backend.
   - Lancer le front-end avec la commande :
    
    ## npm run dev
    

## Fonctionnalités

### Pour les Clients
- Commandes en ligne : Passez des commandes à emporter ou sur place.
- Programme de fidélité : Accumulez des points pour des réductions.
- Parrainage : Invitez d'autres étudiants pour gagner des récompenses.
- Consultation du menu : Voir les plats du jour, les promotions et les événements.
- Réclamations et suivi des commandes : Suivez vos commandes en temps réel et soumettez des réclamations si nécessaire.

### Pour les Employés
- Gestion des commandes : Validation et suivi des commandes.
- Mise à jour du menu : Modifier le menu en fonction de la disponibilité des plats.

### Pour les Administrateurs
- Gestion des employés : Créer et modifier les comptes.
- Suivi des statistiques : Analyse des ventes et de l'utilisation du programme de fidélité.
- Gestion des promotions : Créer des événements et des offres spéciales.

### Défis Rencontrés 

Nous avons choisi React pour le développement du front-end en raison de ses nombreux avantages :

-Composants réutilisables : React permet de créer des composants modulaires et réutilisables, facilitant la maintenance et l'évolution du code.
-Multiplateforme : Grâce à son écosystème riche, React offre la possibilité de développer des applications web et mobiles en utilisant des technologies similaires.
-Performance : Le DOM virtuel de React permet une mise à jour efficace de l'interface utilisateur, améliorant ainsi les performances.

  Pour le back-end, nous avons opté pour le PHP natif afin de bénéficier d'une plus grande liberté dans la gestion du code, comparé aux frameworks plus structurés tels que Laravel. 
  Cette approche a permis une personnalisation accrue des fonctionnalités et une adaptation flexible aux besoins spécifiques du projet.

### Ajustements en Cours de Développement
Le projet prévoyait la possibilité d'ajouter de nouveaux restaurants à l'application afin de permettre une expansion future. Cependant, cette fonctionnalité n'a pas été implémentée dans la version actuelle. Cela s'explique par des priorités ajustées en cours de développement, mettant davantage l'accent sur l'optimisation du système de commande et l'intégration des programmes de fidélité.


### Perspectives d'Évolution 
-Les évolutions futures de l'application incluent :

Extension multisites : Permettre l'ajout de plusieurs restaurants, avec des options de gestion spécifiques pour chaque établissement.
Développement d'une application mobile : Utiliser React Native pour porter l'application web sur les plateformes mobiles.
Amélioration du système de paiement : Ajouter des options de paiement supplémentaires et optimiser l'intégration de l'agrégateur de paiements.

## Tests

L'application a été rigoureusement testée selon les étapes suivantes :
- Tests unitaires : Pour les fonctionnalités critiques (authentification, gestion des commandes).
- Tests d'intégration : Vérification du flux complet de la commande à la livraison.
- Tests d'interface utilisateur : Validation de l'expérience utilisateur sur différents navigateurs et appareils.

## Déploiement

			######### Manque d'information sur le déploiement de l'application

## Licence

Ce projet est sous licence UCAC-Icam.

## Remerciements

Nous remercions chaleureusement toute l'équipe pour sa collaboration, ainsi que ZeDuc@Space pour l'opportunité de moderniser l'expérience de ses clients.

