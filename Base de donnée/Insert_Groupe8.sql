-- Insertion dans la table Etudiant
INSERT INTO Etudiant (id, nom, email, mot_de_passe, localisation, téléphone, points_fidelite, code_parrainage, parrain) VALUES
(10000, 'Dupont', 'dupont@example.com', 'password1', 'Paris', '0123456789', 0, 'CODE001', NULL),
(10001, 'Martin', 'martin@example.com', 'password2', 'Lyon', '0123456790', 0, 'CODE002', NULL),
(10002, 'Durand', 'durand@example.com', 'password3', 'Marseille', '0123456791', 0, 'CODE003', NULL),
(10003, 'Leroy', 'leroy@example.com', 'password4', 'Toulouse', '0123456792', 0, 'CODE004', NULL),
(10004, 'Moreau', 'moreau@example.com', 'password5', 'Nice', '0123456793', 0, 'CODE005', NULL),
(10005, 'Gauthier', 'gauthier@example.com', 'password6', 'Nantes', '0123456794', 0, 'CODE006', NULL),
(10006, 'Faure', 'faure@example.com', 'password7', 'Strasbourg', '0123456795', 0, 'CODE007', NULL),
(10007, 'Lambert', 'lambert@example.com', 'password8', 'Bordeaux', '0123456796', 0, 'CODE008', NULL),
(10008, 'Bernard', 'bernard@example.com', 'password9', 'Lille', '0123456797', 0, 'CODE009', NULL),
(10009, 'Carpentier', 'carpentier@example.com', 'password10', 'Rennes', '0123456798', 0, 'CODE010', NULL),
(10010, 'Morel', 'morel@example.com', 'password11', 'Reims', '0123456799', 0, 'CODE011', NULL),
(10011, 'Lemoine', 'lemoine@example.com', 'password12', 'Montpellier', '0123456800', 0, 'CODE012', NULL),
(10012, 'Noel', 'noel@example.com', 'password13', 'Grenoble', '0123456801', 0, 'CODE013', NULL),
(10013, 'Collet', 'collet@example.com', 'password14', 'Saint-Étienne', '0123456802', 0, 'CODE014', NULL),
(10014, 'Roy', 'roy@example.com', 'password15', 'Nantes', '0123456803', 0, 'CODE015', NULL),
(10015, 'Roussel', 'roussel@example.com', 'password16', 'Toulon', '0123456804', 0, 'CODE016', NULL),
(10016, 'David', 'david@example.com', 'password17', 'Nice', '0123456805', 0, 'CODE017', NULL),
(10017, 'Brun', 'brun@example.com', 'password18', 'Avignon', '0123456806', 0, 'CODE018', NULL),
(10018, 'Meunier', 'meunier@example.com', 'password19', 'Annecy', '0123456807', 0, 'CODE019', NULL),
(10019, 'Boucher', 'boucher@example.com', 'password20', 'Cannes', '0123456808', 0, 'CODE020', NULL),
(10020, 'Blanchard', 'blanchard@example.com', 'password21', 'Amiens', '0123456809', 0, 'CODE021', NULL),
(10021, 'Robert', 'robert@example.com', 'password22', 'Saint-Denis', '0123456810', 0, 'CODE022', NULL),
(10022, 'Renard', 'renard@example.com', 'password23', 'Saint-Paul', '0123456811', 0, 'CODE023', NULL),
(10023, 'Perrot', 'perrot@example.com', 'password24', 'Le Havre', '0123456812', 0, 'CODE024', NULL),
(10024, 'Vasseur', 'vasseur@example.com', 'password25', 'Nanterre', '0123456813', 0, 'CODE025', NULL),
(10025, 'Barret', 'barret@example.com', 'password26', 'Argenteuil', '0123456814', 0, 'CODE026', NULL),
(10026, 'Hilaire', 'hilaire@example.com', 'password27', 'Clichy', '0123456815', 0, 'CODE027', NULL),
(10027, 'Lemoine', 'lemoine2@example.com', 'password28', 'Antibes', '0123456816', 0, 'CODE028', NULL),
(10028, 'Fournier', 'fournier@example.com', 'password29', 'Versailles', '0123456817', 0, 'CODE029', NULL),
(10029, 'Leroux', 'leroux@example.com', 'password30', 'Colmar', '0123456818', 0, 'CODE030', NULL),
(10030, 'Deschamps', 'deschamps@example.com', 'password31', 'Quimper', '0123456819', 0, 'CODE031', NULL),
(10031, 'Perin', 'perin@example.com', 'password32', 'Béziers', '0123456820', 0, 'CODE032', NULL),
(10032, 'Bailly', 'bailly@example.com', 'password33', 'Laval', '0123456821', 0, 'CODE033', NULL),
(10033, 'Fischer', 'fischer@example.com', 'password34', 'Clermont-Ferrand', '0123456822', 0, 'CODE034', NULL),
(10034, 'Jacquet', 'jacquet@example.com', 'password35', 'Céret', '0123456823', 0, 'CODE035', NULL),
(10035, 'Gerard', 'gerard@example.com', 'password36', 'Tarbes', '0123456824', 0, 'CODE036', NULL),
(10036, 'Morin', 'morin@example.com', 'password37', 'Chalon-sur-Saône', '0123456825', 0, 'CODE037', NULL),
(10037, 'Michel', 'michel@example.com', 'password38', 'Saint-Malo', '0123456826', 0, 'CODE038', NULL),
(10038, 'Colin', 'colin@example.com', 'password39', 'Saint-Nazaire', '0123456827', 0, 'CODE039', NULL),
(10039, 'Giraud', 'giraud@example.com', 'password40', 'Saint-Priest', '0123456828', 0, 'CODE040', NULL);


-- Insertion dans la table Menu
INSERT INTO menu (`nom`, description, prix, `stock`)
VALUES
    ('Pizza', 'Pizza avec sauce tomate et fromage', 10.50, 20),
    ('Salade César', 'Salade avec poulet et parmesan', 8.50, 15),
    ('Eru', 'Plat traditionnel camerounais avec légume et viande', 9.00, 30),
    ('Okok sucré', 'Dessert traditionnel sucré avec feuilles d\'okok', 6.00, 10),
    ('Okok salé', 'Plat traditionnel salé avec feuilles d\'okok', 3.50, 25);


-- Insertion dans la table Commande
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, `points_utilises`)
VALUES
    (1, '2024-10-12', 'Livrée', 23.50, 'Livraison', 'Très bon service', 20),
    (2, '2024-10-13', 'En cours', 18.00, 'Sur place', NULL, 10),
    (3, '2024-10-14', 'Livrée', 12.50, 'Livraison', 'Un peu froid', 15),
    (4, '2024-10-14', 'Annulée', 0.00, 'Sur place', NULL, 0),
    (5, '2024-10-14', 'Livrée', 9.50, 'Livraison', 'Délicieux', 5);


-- Insertion dans la table Detail_commande
INSERT INTO detail_commande (id_commande, id_menu, `quantité`, sous_total)
VALUES
    (1, 1, 2, 21.00),
    (1, 5, 1, 3.50),
    (2, 3, 2, 18.00),
    (3, 2, 1, 8.50),
    (3, 5, 1, 3.50),
    (5, 4, 1, 6.00);


-- Insertion dans la table Fidelite
INSERT INTO `fidelite` (id_etudiant, points_ajoutes, points_utilises)
VALUES
    (1, 50, 20),
    (2, 30, 10),
    (3, 40, 15),
    (4, 20, 0),
    (5, 35, 5);


-- Insertion dans la table Reclamation
INSERT INTO reclamation (`id_etudiant`, id_commande, `description`, statut)
VALUES
    (1, 3, 'Commande arrivée froide', 'Résolue'),
    (2, 4, 'Commande annulée à tort', 'En attente'),
    (3, 5, 'Délai de livraison trop long', 'En cours');


-- Insertion dans la table Paiement
INSERT INTO `paiement` (id_commande, montant, methode_paiement, statut)
VALUES
    (1, 23.50, 'Carte bancaire', 'Réussi'),
    (2, 18.00, 'Mobile Money', 'Réussi'),
    (3, 12.50, 'Carte bancaire', 'Réussi'),
    (5, 9.50, 'Mobile Money', 'Réussi');


-- Insertion dans la table Parrainage
INSERT INTO `parrainage` (id_parrain, id_filleul)
VALUES
    (1, 2),
    (1, 3),
    (2, 4),
    (3, 5);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-02-23 00:00:00', 'Annulé', 161272.97, 'Restauration', 'Commande 1', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-03-28 00:00:00', 'En cours', 189139.89, 'Restauration', 'Commande 2', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-02-11 00:00:00', 'Annulé', 62902.23, 'Restauration', 'Commande 3', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-14 00:00:00', 'Annulé', 105681.9, 'Restauration', 'Commande 4', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-05-31 00:00:00', 'Annulé', 107093.77, 'Restauration', 'Commande 5', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-09-06 00:00:00', 'Livré', 186581.38, 'Restauration', 'Commande 6', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-07-18 00:00:00', 'En cours', 24405.24, 'Restauration', 'Commande 7', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-09-27 00:00:00', 'Livré', 60710.18, 'Restauration', 'Commande 8', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-02-19 00:00:00', 'Annulé', 50442.45, 'Restauration', 'Commande 9', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-09-27 00:00:00', 'Annulé', 179380.98, 'Restauration', 'Commande 10', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-01-12 00:00:00', 'Livré', 114832.35, 'Restauration', 'Commande 11', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-01-19 00:00:00', 'En cours', 166928.27, 'Restauration', 'Commande 12', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-09-10 00:00:00', 'En cours', 18162.12, 'Restauration', 'Commande 13', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-02-26 00:00:00', 'Annulé', 198433.78, 'Restauration', 'Commande 14', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-01-22 00:00:00', 'Livré', 49004.23, 'Restauration', 'Commande 15', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-05-02 00:00:00', 'En cours', 97496.69, 'Restauration', 'Commande 16', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-06-23 00:00:00', 'En cours', 181675.54, 'Restauration', 'Commande 17', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-06-08 00:00:00', 'Annulé', 58345.03, 'Restauration', 'Commande 18', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-11-11 00:00:00', 'En cours', 69436.36, 'Restauration', 'Commande 19', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-11-22 00:00:00', 'Annulé', 182231.72, 'Restauration', 'Commande 20', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-05-02 00:00:00', 'Livré', 52647.73, 'Restauration', 'Commande 21', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-04-15 00:00:00', 'Livré', 73425.98, 'Restauration', 'Commande 22', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-10-25 00:00:00', 'Annulé', 76458.78, 'Restauration', 'Commande 23', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-01-22 00:00:00', 'En cours', 98871.85, 'Restauration', 'Commande 24', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-07-12 00:00:00', 'Annulé', 193769.39, 'Restauration', 'Commande 25', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-01-17 00:00:00', 'Annulé', 111266.57, 'Restauration', 'Commande 26', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-05-06 00:00:00', 'Annulé', 181340.07, 'Restauration', 'Commande 27', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-02-09 00:00:00', 'En cours', 83136.75, 'Restauration', 'Commande 28', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-06-03 00:00:00', 'Annulé', 176433.35, 'Restauration', 'Commande 29', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-11-03 00:00:00', 'En cours', 106174.88, 'Restauration', 'Commande 30', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-12-01 00:00:00', 'Annulé', 45335.41, 'Restauration', 'Commande 31', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-01-16 00:00:00', 'Annulé', 19578.58, 'Restauration', 'Commande 32', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-01-20 00:00:00', 'Annulé', 117491.62, 'Restauration', 'Commande 33', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-02-28 00:00:00', 'Annulé', 30024.55, 'Restauration', 'Commande 34', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-06-25 00:00:00', 'En cours', 45776.95, 'Restauration', 'Commande 35', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-09-25 00:00:00', 'Livré', 79102.12, 'Restauration', 'Commande 36', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-01-30 00:00:00', 'En cours', 109150.45, 'Restauration', 'Commande 37', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-09-27 00:00:00', 'Livré', 32269.35, 'Restauration', 'Commande 38', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-04-24 00:00:00', 'Annulé', 133389.74, 'Restauration', 'Commande 39', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-11-06 00:00:00', 'En cours', 69056.13, 'Restauration', 'Commande 40', 37);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-08-31 00:00:00', 'Annulé', 98067.2, 'Restauration', 'Commande 41', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-10-19 00:00:00', 'Annulé', 148572.13, 'Restauration', 'Commande 42', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-06-02 00:00:00', 'En cours', 31101.81, 'Restauration', 'Commande 43', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-02-15 00:00:00', 'Livré', 144611.23, 'Restauration', 'Commande 44', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-12-15 00:00:00', 'Livré', 147346.29, 'Restauration', 'Commande 45', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-07-22 00:00:00', 'Annulé', 49839.94, 'Restauration', 'Commande 46', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-12-02 00:00:00', 'Annulé', 10377.52, 'Restauration', 'Commande 47', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-02-21 00:00:00', 'En cours', 53669.49, 'Restauration', 'Commande 48', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-08-02 00:00:00', 'Livré', 25427.02, 'Restauration', 'Commande 49', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-03-28 00:00:00', 'En cours', 45532.96, 'Restauration', 'Commande 50', 83);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-06-12 00:00:00', 'Livré', 92120.43, 'Restauration', 'Commande 51', 88);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-12-13 00:00:00', 'En cours', 55635.98, 'Restauration', 'Commande 52', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-11-25 00:00:00', 'Annulé', 59040.66, 'Restauration', 'Commande 53', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-09-23 00:00:00', 'Annulé', 87460.84, 'Restauration', 'Commande 54', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-07-24 00:00:00', 'En cours', 18631.28, 'Restauration', 'Commande 55', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-05-30 00:00:00', 'Annulé', 16408.17, 'Restauration', 'Commande 56', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-10-13 00:00:00', 'En cours', 167252.75, 'Restauration', 'Commande 57', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-06-17 00:00:00', 'Livré', 43494.56, 'Restauration', 'Commande 58', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-30 00:00:00', 'En cours', 156117.43, 'Restauration', 'Commande 59', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-12-17 00:00:00', 'En cours', 175749.92, 'Restauration', 'Commande 60', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-12-14 00:00:00', 'Livré', 135288.06, 'Restauration', 'Commande 61', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-01-22 00:00:00', 'Livré', 176555.85, 'Restauration', 'Commande 62', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-01-07 00:00:00', 'En cours', 160924.13, 'Restauration', 'Commande 63', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-10-25 00:00:00', 'Livré', 192606.41, 'Restauration', 'Commande 64', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-04-01 00:00:00', 'Livré', 195650.75, 'Restauration', 'Commande 65', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-08-27 00:00:00', 'Livré', 181025.31, 'Restauration', 'Commande 66', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-07-10 00:00:00', 'Livré', 48421.27, 'Restauration', 'Commande 67', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-04-20 00:00:00', 'En cours', 72686.99, 'Restauration', 'Commande 68', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-06-13 00:00:00', 'En cours', 176418.02, 'Restauration', 'Commande 69', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-31 00:00:00', 'Annulé', 163660.11, 'Restauration', 'Commande 70', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-02-29 00:00:00', 'En cours', 163570.28, 'Restauration', 'Commande 71', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-08-19 00:00:00', 'En cours', 92665.96, 'Restauration', 'Commande 72', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-10-29 00:00:00', 'Livré', 124079.73, 'Restauration', 'Commande 73', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-11-04 00:00:00', 'Annulé', 107271.15, 'Restauration', 'Commande 74', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-02-28 00:00:00', 'Livré', 23334.53, 'Restauration', 'Commande 75', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-07-30 00:00:00', 'En cours', 187913.73, 'Restauration', 'Commande 76', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-10-22 00:00:00', 'En cours', 155441.58, 'Restauration', 'Commande 77', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-01-18 00:00:00', 'En cours', 198110.81, 'Restauration', 'Commande 78', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-01-01 00:00:00', 'Annulé', 162059.87, 'Restauration', 'Commande 79', 73);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-10-04 00:00:00', 'En cours', 80317.21, 'Restauration', 'Commande 80', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-10-13 00:00:00', 'En cours', 135478.38, 'Restauration', 'Commande 81', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-08-01 00:00:00', 'En cours', 32925.1, 'Restauration', 'Commande 82', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-02-24 00:00:00', 'Livré', 182763.04, 'Restauration', 'Commande 83', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-04-08 00:00:00', 'Livré', 130491.31, 'Restauration', 'Commande 84', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-01-07 00:00:00', 'Livré', 143164.99, 'Restauration', 'Commande 85', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-08-18 00:00:00', 'Livré', 145636.8, 'Restauration', 'Commande 86', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-03-11 00:00:00', 'Livré', 111081.67, 'Restauration', 'Commande 87', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-02-06 00:00:00', 'Livré', 21908.86, 'Restauration', 'Commande 88', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-03-27 00:00:00', 'Annulé', 19024.93, 'Restauration', 'Commande 89', 2);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-06-27 00:00:00', 'En cours', 50893.55, 'Restauration', 'Commande 90', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-05-08 00:00:00', 'En cours', 99996.25, 'Restauration', 'Commande 91', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-11-28 00:00:00', 'Annulé', 30756.65, 'Restauration', 'Commande 92', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-05-08 00:00:00', 'En cours', 20192.16, 'Restauration', 'Commande 93', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-05-07 00:00:00', 'En cours', 59005.33, 'Restauration', 'Commande 94', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-12-13 00:00:00', 'Livré', 188647.49, 'Restauration', 'Commande 95', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-08-06 00:00:00', 'En cours', 48988.27, 'Restauration', 'Commande 96', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-12-29 00:00:00', 'En cours', 117151.84, 'Restauration', 'Commande 97', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-11-22 00:00:00', 'Annulé', 162068.66, 'Restauration', 'Commande 98', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-07-25 00:00:00', 'Livré', 194096.36, 'Restauration', 'Commande 99', 55);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-11-22 00:00:00', 'Annulé', 74333.51, 'Restauration', 'Commande 100', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-10-28 00:00:00', 'Livré', 14240.3, 'Restauration', 'Commande 101', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-07-28 00:00:00', 'Annulé', 36648.36, 'Restauration', 'Commande 102', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-02-26 00:00:00', 'En cours', 126628.67, 'Restauration', 'Commande 103', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-05-13 00:00:00', 'Annulé', 37644.96, 'Restauration', 'Commande 104', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-04-15 00:00:00', 'Annulé', 162732.03, 'Restauration', 'Commande 105', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-08-25 00:00:00', 'Livré', 13243.64, 'Restauration', 'Commande 106', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-08-20 00:00:00', 'Annulé', 14844.83, 'Restauration', 'Commande 107', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-07-17 00:00:00', 'Annulé', 120322.39, 'Restauration', 'Commande 108', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-04-25 00:00:00', 'Annulé', 120186.43, 'Restauration', 'Commande 109', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-11-23 00:00:00', 'Livré', 151801.52, 'Restauration', 'Commande 110', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-04-16 00:00:00', 'Annulé', 56508.94, 'Restauration', 'Commande 111', 73);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-03-26 00:00:00', 'Livré', 23393.36, 'Restauration', 'Commande 112', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-09-26 00:00:00', 'Annulé', 50847.77, 'Restauration', 'Commande 113', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-30 00:00:00', 'Livré', 26632.35, 'Restauration', 'Commande 114', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-09-09 00:00:00', 'En cours', 70151.12, 'Restauration', 'Commande 115', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-11-09 00:00:00', 'En cours', 54581.41, 'Restauration', 'Commande 116', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-06-19 00:00:00', 'En cours', 65932.36, 'Restauration', 'Commande 117', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-09-12 00:00:00', 'Livré', 44861.76, 'Restauration', 'Commande 118', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-02-21 00:00:00', 'Livré', 169702.79, 'Restauration', 'Commande 119', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-03-30 00:00:00', 'Annulé', 111076.63, 'Restauration', 'Commande 120', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-08-27 00:00:00', 'En cours', 61144.68, 'Restauration', 'Commande 121', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-01-14 00:00:00', 'Livré', 47326.18, 'Restauration', 'Commande 122', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-06-16 00:00:00', 'Livré', 180675.03, 'Restauration', 'Commande 123', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-05-11 00:00:00', 'En cours', 124365.18, 'Restauration', 'Commande 124', 5);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-05-08 00:00:00', 'Annulé', 37804.99, 'Restauration', 'Commande 125', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-08-31 00:00:00', 'Livré', 176910.55, 'Restauration', 'Commande 126', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-07-05 00:00:00', 'Livré', 30536.48, 'Restauration', 'Commande 127', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-07-14 00:00:00', 'Livré', 49967.07, 'Restauration', 'Commande 128', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-12-27 00:00:00', 'Livré', 107354.53, 'Restauration', 'Commande 129', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-08-26 00:00:00', 'Annulé', 44829.55, 'Restauration', 'Commande 130', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-10-27 00:00:00', 'Annulé', 178123.29, 'Restauration', 'Commande 131', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-10-07 00:00:00', 'En cours', 74807.15, 'Restauration', 'Commande 132', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-04-16 00:00:00', 'En cours', 168553.48, 'Restauration', 'Commande 133', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-11-27 00:00:00', 'En cours', 23511.7, 'Restauration', 'Commande 134', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-10-28 00:00:00', 'En cours', 131702.78, 'Restauration', 'Commande 135', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-02-01 00:00:00', 'En cours', 135921.98, 'Restauration', 'Commande 136', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-09-30 00:00:00', 'Livré', 27024.11, 'Restauration', 'Commande 137', 37);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-10-11 00:00:00', 'En cours', 132660.97, 'Restauration', 'Commande 138', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-09-19 00:00:00', 'Annulé', 171382.27, 'Restauration', 'Commande 139', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-10-06 00:00:00', 'Livré', 179762.02, 'Restauration', 'Commande 140', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-09-19 00:00:00', 'Annulé', 58098.32, 'Restauration', 'Commande 141', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-03-20 00:00:00', 'Annulé', 88066.33, 'Restauration', 'Commande 142', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-02-21 00:00:00', 'Annulé', 114162.61, 'Restauration', 'Commande 143', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-23 00:00:00', 'Livré', 129781.95, 'Restauration', 'Commande 144', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-01-04 00:00:00', 'Annulé', 74444.44, 'Restauration', 'Commande 145', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-09-29 00:00:00', 'Livré', 110265.55, 'Restauration', 'Commande 146', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-08-12 00:00:00', 'En cours', 191971.66, 'Restauration', 'Commande 147', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-08-20 00:00:00', 'Annulé', 193010.46, 'Restauration', 'Commande 148', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-07-22 00:00:00', 'Annulé', 187891.16, 'Restauration', 'Commande 149', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-10-15 00:00:00', 'En cours', 68109.2, 'Restauration', 'Commande 150', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-10-06 00:00:00', 'Annulé', 189307.42, 'Restauration', 'Commande 151', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-12-19 00:00:00', 'En cours', 117443.0, 'Restauration', 'Commande 152', 62);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-04-14 00:00:00', 'Livré', 34188.96, 'Restauration', 'Commande 153', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-10-14 00:00:00', 'Annulé', 156026.47, 'Restauration', 'Commande 154', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-12-23 00:00:00', 'En cours', 66887.8, 'Restauration', 'Commande 155', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-08-17 00:00:00', 'Annulé', 56182.92, 'Restauration', 'Commande 156', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-01-28 00:00:00', 'Livré', 140983.3, 'Restauration', 'Commande 157', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-07-13 00:00:00', 'Annulé', 21395.68, 'Restauration', 'Commande 158', 77);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-06-01 00:00:00', 'Livré', 196891.3, 'Restauration', 'Commande 159', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-02-20 00:00:00', 'Livré', 188244.75, 'Restauration', 'Commande 160', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-05-26 00:00:00', 'Livré', 196899.77, 'Restauration', 'Commande 161', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-09-08 00:00:00', 'Livré', 118159.47, 'Restauration', 'Commande 162', 37);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-11-10 00:00:00', 'En cours', 174302.58, 'Restauration', 'Commande 163', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-05-01 00:00:00', 'Annulé', 109052.62, 'Restauration', 'Commande 164', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-05-11 00:00:00', 'En cours', 52742.56, 'Restauration', 'Commande 165', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-09-16 00:00:00', 'En cours', 89800.1, 'Restauration', 'Commande 166', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-09-05 00:00:00', 'Annulé', 40307.7, 'Restauration', 'Commande 167', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-04-10 00:00:00', 'En cours', 75666.6, 'Restauration', 'Commande 168', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-01-21 00:00:00', 'Annulé', 55121.26, 'Restauration', 'Commande 169', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-07-31 00:00:00', 'En cours', 123446.82, 'Restauration', 'Commande 170', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-28 00:00:00', 'En cours', 160330.84, 'Restauration', 'Commande 171', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-06-25 00:00:00', 'Annulé', 97564.47, 'Restauration', 'Commande 172', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-03-20 00:00:00', 'Annulé', 158092.97, 'Restauration', 'Commande 173', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-02-18 00:00:00', 'Livré', 22075.47, 'Restauration', 'Commande 174', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-07-11 00:00:00', 'Livré', 174707.92, 'Restauration', 'Commande 175', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-02-15 00:00:00', 'Livré', 101635.67, 'Restauration', 'Commande 176', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-03-04 00:00:00', 'En cours', 154636.12, 'Restauration', 'Commande 177', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-11-12 00:00:00', 'Annulé', 63809.9, 'Restauration', 'Commande 178', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-04-09 00:00:00', 'Livré', 63352.38, 'Restauration', 'Commande 179', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-05-09 00:00:00', 'En cours', 46609.33, 'Restauration', 'Commande 180', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-11-06 00:00:00', 'Annulé', 70617.11, 'Restauration', 'Commande 181', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-06-02 00:00:00', 'Annulé', 73012.21, 'Restauration', 'Commande 182', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-09-27 00:00:00', 'En cours', 158986.94, 'Restauration', 'Commande 183', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-11-14 00:00:00', 'En cours', 24532.55, 'Restauration', 'Commande 184', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-05-16 00:00:00', 'En cours', 38494.77, 'Restauration', 'Commande 185', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-08-22 00:00:00', 'En cours', 38085.91, 'Restauration', 'Commande 186', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-10-31 00:00:00', 'Annulé', 89179.72, 'Restauration', 'Commande 187', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-12-23 00:00:00', 'En cours', 24644.87, 'Restauration', 'Commande 188', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-03-04 00:00:00', 'En cours', 158971.45, 'Restauration', 'Commande 189', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-06-23 00:00:00', 'Annulé', 49058.25, 'Restauration', 'Commande 190', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-11-01 00:00:00', 'En cours', 111707.94, 'Restauration', 'Commande 191', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-02-06 00:00:00', 'Annulé', 132690.91, 'Restauration', 'Commande 192', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-12-16 00:00:00', 'Livré', 192069.03, 'Restauration', 'Commande 193', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-08-11 00:00:00', 'Annulé', 38226.29, 'Restauration', 'Commande 194', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-10-16 00:00:00', 'Annulé', 60917.91, 'Restauration', 'Commande 195', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-03-23 00:00:00', 'Annulé', 44656.7, 'Restauration', 'Commande 196', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-03-29 00:00:00', 'Livré', 180240.09, 'Restauration', 'Commande 197', 62);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-01-02 00:00:00', 'Livré', 92180.48, 'Restauration', 'Commande 198', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-07-30 00:00:00', 'En cours', 16141.36, 'Restauration', 'Commande 199', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-05-25 00:00:00', 'Livré', 48274.38, 'Restauration', 'Commande 200', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-11-06 00:00:00', 'En cours', 130087.97, 'Restauration', 'Commande 201', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-08-14 00:00:00', 'En cours', 154751.67, 'Restauration', 'Commande 202', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-07-29 00:00:00', 'Livré', 182997.74, 'Restauration', 'Commande 203', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-07 00:00:00', 'Livré', 126285.12, 'Restauration', 'Commande 204', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-09-14 00:00:00', 'Annulé', 78853.94, 'Restauration', 'Commande 205', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-11-13 00:00:00', 'Annulé', 81773.32, 'Restauration', 'Commande 206', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-07-01 00:00:00', 'Annulé', 14421.65, 'Restauration', 'Commande 207', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-02-01 00:00:00', 'En cours', 179490.0, 'Restauration', 'Commande 208', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-07-29 00:00:00', 'En cours', 29703.63, 'Restauration', 'Commande 209', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-09-18 00:00:00', 'Annulé', 78118.54, 'Restauration', 'Commande 210', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-10-07 00:00:00', 'En cours', 13860.32, 'Restauration', 'Commande 211', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-09-26 00:00:00', 'Livré', 189179.72, 'Restauration', 'Commande 212', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-03-14 00:00:00', 'Livré', 125443.25, 'Restauration', 'Commande 213', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-12-13 00:00:00', 'En cours', 124945.97, 'Restauration', 'Commande 214', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-07-09 00:00:00', 'En cours', 127040.74, 'Restauration', 'Commande 215', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-10-06 00:00:00', 'Annulé', 116821.93, 'Restauration', 'Commande 216', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-01-01 00:00:00', 'Annulé', 87160.91, 'Restauration', 'Commande 217', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-04-17 00:00:00', 'Annulé', 100589.1, 'Restauration', 'Commande 218', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-06-01 00:00:00', 'En cours', 156539.61, 'Restauration', 'Commande 219', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-12-10 00:00:00', 'Annulé', 53405.38, 'Restauration', 'Commande 220', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-09-30 00:00:00', 'En cours', 196495.76, 'Restauration', 'Commande 221', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-07-21 00:00:00', 'En cours', 47677.66, 'Restauration', 'Commande 222', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-03-12 00:00:00', 'Livré', 35749.48, 'Restauration', 'Commande 223', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-11-26 00:00:00', 'Annulé', 19385.07, 'Restauration', 'Commande 224', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-11-17 00:00:00', 'Livré', 81158.34, 'Restauration', 'Commande 225', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-07-04 00:00:00', 'Annulé', 102173.8, 'Restauration', 'Commande 226', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-10-03 00:00:00', 'Livré', 165680.66, 'Restauration', 'Commande 227', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-02-16 00:00:00', 'Annulé', 19181.41, 'Restauration', 'Commande 228', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-05-30 00:00:00', 'En cours', 31715.42, 'Restauration', 'Commande 229', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-11-23 00:00:00', 'En cours', 157062.35, 'Restauration', 'Commande 230', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-03-19 00:00:00', 'Annulé', 11166.94, 'Restauration', 'Commande 231', 55);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-08-09 00:00:00', 'Annulé', 123819.8, 'Restauration', 'Commande 232', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-02-23 00:00:00', 'Livré', 189826.58, 'Restauration', 'Commande 233', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-07-29 00:00:00', 'Annulé', 167372.44, 'Restauration', 'Commande 234', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-09-10 00:00:00', 'Annulé', 34643.81, 'Restauration', 'Commande 235', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-04-29 00:00:00', 'Annulé', 195477.31, 'Restauration', 'Commande 236', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-06-03 00:00:00', 'Annulé', 171454.49, 'Restauration', 'Commande 237', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-02-06 00:00:00', 'En cours', 127974.52, 'Restauration', 'Commande 238', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-11-06 00:00:00', 'Livré', 155009.3, 'Restauration', 'Commande 239', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-07-22 00:00:00', 'Livré', 96927.81, 'Restauration', 'Commande 240', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-06-08 00:00:00', 'En cours', 37888.7, 'Restauration', 'Commande 241', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-09-19 00:00:00', 'Livré', 69285.93, 'Restauration', 'Commande 242', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-11-16 00:00:00', 'Annulé', 180556.98, 'Restauration', 'Commande 243', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-11-03 00:00:00', 'En cours', 76653.6, 'Restauration', 'Commande 244', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-10-30 00:00:00', 'Livré', 191181.45, 'Restauration', 'Commande 245', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-06-13 00:00:00', 'En cours', 84378.96, 'Restauration', 'Commande 246', 65);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-12-09 00:00:00', 'Livré', 138605.11, 'Restauration', 'Commande 247', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-10-08 00:00:00', 'Annulé', 161046.1, 'Restauration', 'Commande 248', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-04-16 00:00:00', 'En cours', 68828.88, 'Restauration', 'Commande 249', 65);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-03-01 00:00:00', 'Livré', 150774.78, 'Restauration', 'Commande 250', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-01-24 00:00:00', 'Annulé', 179883.18, 'Restauration', 'Commande 251', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-02-16 00:00:00', 'Livré', 147875.7, 'Restauration', 'Commande 252', 24);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-05-17 00:00:00', 'Livré', 84527.14, 'Restauration', 'Commande 253', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-04-19 00:00:00', 'Annulé', 109074.83, 'Restauration', 'Commande 254', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-06-21 00:00:00', 'Annulé', 43992.79, 'Restauration', 'Commande 255', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-04-03 00:00:00', 'En cours', 71787.9, 'Restauration', 'Commande 256', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-01-08 00:00:00', 'En cours', 113527.95, 'Restauration', 'Commande 257', 2);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-10-09 00:00:00', 'Annulé', 14682.88, 'Restauration', 'Commande 258', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-03-24 00:00:00', 'Livré', 138027.71, 'Restauration', 'Commande 259', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-08-12 00:00:00', 'Annulé', 72899.05, 'Restauration', 'Commande 260', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-08-16 00:00:00', 'Livré', 92584.2, 'Restauration', 'Commande 261', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-01-08 00:00:00', 'Annulé', 19868.1, 'Restauration', 'Commande 262', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-04-09 00:00:00', 'Annulé', 19966.62, 'Restauration', 'Commande 263', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-06-03 00:00:00', 'Annulé', 99741.01, 'Restauration', 'Commande 264', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-01-03 00:00:00', 'Livré', 57682.16, 'Restauration', 'Commande 265', 5);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-01-14 00:00:00', 'En cours', 84399.97, 'Restauration', 'Commande 266', 77);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-07-22 00:00:00', 'En cours', 49963.1, 'Restauration', 'Commande 267', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-03-30 00:00:00', 'Livré', 179786.83, 'Restauration', 'Commande 268', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-06-17 00:00:00', 'En cours', 125582.42, 'Restauration', 'Commande 269', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-04-25 00:00:00', 'Livré', 26199.47, 'Restauration', 'Commande 270', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-08-21 00:00:00', 'Annulé', 113452.84, 'Restauration', 'Commande 271', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-02-18 00:00:00', 'Annulé', 175456.07, 'Restauration', 'Commande 272', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-07-18 00:00:00', 'En cours', 173407.94, 'Restauration', 'Commande 273', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-05-24 00:00:00', 'Annulé', 167318.06, 'Restauration', 'Commande 274', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-10-20 00:00:00', 'Annulé', 196806.79, 'Restauration', 'Commande 275', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-02-17 00:00:00', 'En cours', 40616.81, 'Restauration', 'Commande 276', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-03-18 00:00:00', 'En cours', 172950.77, 'Restauration', 'Commande 277', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-05-10 00:00:00', 'Livré', 147428.7, 'Restauration', 'Commande 278', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-08-06 00:00:00', 'Annulé', 89155.72, 'Restauration', 'Commande 279', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-02-08 00:00:00', 'Livré', 176288.63, 'Restauration', 'Commande 280', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-08-13 00:00:00', 'Annulé', 130788.59, 'Restauration', 'Commande 281', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-12-05 00:00:00', 'Livré', 45244.66, 'Restauration', 'Commande 282', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-12-09 00:00:00', 'Livré', 137987.96, 'Restauration', 'Commande 283', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-07-27 00:00:00', 'En cours', 19038.38, 'Restauration', 'Commande 284', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-04-01 00:00:00', 'Livré', 92060.81, 'Restauration', 'Commande 285', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-07-28 00:00:00', 'Livré', 130539.38, 'Restauration', 'Commande 286', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-07-18 00:00:00', 'Annulé', 196911.37, 'Restauration', 'Commande 287', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-12-09 00:00:00', 'Annulé', 17429.7, 'Restauration', 'Commande 288', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-12-16 00:00:00', 'En cours', 108003.83, 'Restauration', 'Commande 289', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-09-10 00:00:00', 'Annulé', 35427.11, 'Restauration', 'Commande 290', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-01-23 00:00:00', 'En cours', 27049.13, 'Restauration', 'Commande 291', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-10-15 00:00:00', 'Livré', 60119.45, 'Restauration', 'Commande 292', 24);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-03-05 00:00:00', 'Annulé', 172685.15, 'Restauration', 'Commande 293', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-09-02 00:00:00', 'Livré', 189251.8, 'Restauration', 'Commande 294', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-03-22 00:00:00', 'Annulé', 170034.28, 'Restauration', 'Commande 295', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-11-21 00:00:00', 'Annulé', 60995.52, 'Restauration', 'Commande 296', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-12-12 00:00:00', 'Annulé', 152248.99, 'Restauration', 'Commande 297', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-12-10 00:00:00', 'En cours', 22717.24, 'Restauration', 'Commande 298', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-09-30 00:00:00', 'Annulé', 88414.41, 'Restauration', 'Commande 299', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-09-22 00:00:00', 'Annulé', 129026.46, 'Restauration', 'Commande 300', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-09-12 00:00:00', 'En cours', 126034.49, 'Restauration', 'Commande 301', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-12-18 00:00:00', 'En cours', 142621.19, 'Restauration', 'Commande 302', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-09-17 00:00:00', 'En cours', 76664.6, 'Restauration', 'Commande 303', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-09-04 00:00:00', 'Livré', 176158.8, 'Restauration', 'Commande 304', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-09-25 00:00:00', 'Annulé', 67461.02, 'Restauration', 'Commande 305', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-07-25 00:00:00', 'En cours', 54025.44, 'Restauration', 'Commande 306', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-03-30 00:00:00', 'Livré', 171073.34, 'Restauration', 'Commande 307', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-07-18 00:00:00', 'Livré', 33544.2, 'Restauration', 'Commande 308', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-09-26 00:00:00', 'Livré', 68976.7, 'Restauration', 'Commande 309', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-12-05 00:00:00', 'Livré', 43345.71, 'Restauration', 'Commande 310', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-10-29 00:00:00', 'En cours', 35007.14, 'Restauration', 'Commande 311', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-12 00:00:00', 'Livré', 80770.01, 'Restauration', 'Commande 312', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-06-10 00:00:00', 'Annulé', 98682.82, 'Restauration', 'Commande 313', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-09-22 00:00:00', 'Annulé', 30977.38, 'Restauration', 'Commande 314', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-08-22 00:00:00', 'Livré', 158856.58, 'Restauration', 'Commande 315', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-01-18 00:00:00', 'En cours', 120340.66, 'Restauration', 'Commande 316', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-06-01 00:00:00', 'Annulé', 120514.69, 'Restauration', 'Commande 317', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-04-23 00:00:00', 'Annulé', 81937.53, 'Restauration', 'Commande 318', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-10-15 00:00:00', 'En cours', 58512.42, 'Restauration', 'Commande 319', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-06-08 00:00:00', 'Annulé', 49826.26, 'Restauration', 'Commande 320', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-10-07 00:00:00', 'Livré', 29973.0, 'Restauration', 'Commande 321', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-06-01 00:00:00', 'Annulé', 123199.64, 'Restauration', 'Commande 322', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-04-03 00:00:00', 'Annulé', 186726.19, 'Restauration', 'Commande 323', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-03-04 00:00:00', 'En cours', 85610.68, 'Restauration', 'Commande 324', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-02-10 00:00:00', 'Annulé', 183860.86, 'Restauration', 'Commande 325', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-08-09 00:00:00', 'En cours', 33223.42, 'Restauration', 'Commande 326', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-09-23 00:00:00', 'Annulé', 127090.82, 'Restauration', 'Commande 327', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-02-16 00:00:00', 'Livré', 99970.09, 'Restauration', 'Commande 328', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-10-28 00:00:00', 'Livré', 50409.39, 'Restauration', 'Commande 329', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-04-22 00:00:00', 'Livré', 190442.01, 'Restauration', 'Commande 330', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-03-12 00:00:00', 'Livré', 103532.1, 'Restauration', 'Commande 331', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-11-07 00:00:00', 'Annulé', 46706.62, 'Restauration', 'Commande 332', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-10-20 00:00:00', 'Annulé', 161490.46, 'Restauration', 'Commande 333', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-07-07 00:00:00', 'En cours', 17109.49, 'Restauration', 'Commande 334', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-11-20 00:00:00', 'En cours', 107835.64, 'Restauration', 'Commande 335', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-01-12 00:00:00', 'Annulé', 17116.12, 'Restauration', 'Commande 336', 83);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-03-07 00:00:00', 'Annulé', 70384.69, 'Restauration', 'Commande 337', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-06-20 00:00:00', 'Annulé', 122805.18, 'Restauration', 'Commande 338', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-05-14 00:00:00', 'En cours', 86481.21, 'Restauration', 'Commande 339', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-02-20 00:00:00', 'En cours', 61722.73, 'Restauration', 'Commande 340', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-11-18 00:00:00', 'Livré', 91295.63, 'Restauration', 'Commande 341', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-04-02 00:00:00', 'Annulé', 178488.63, 'Restauration', 'Commande 342', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-01-15 00:00:00', 'En cours', 49014.69, 'Restauration', 'Commande 343', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-12-30 00:00:00', 'Annulé', 47088.95, 'Restauration', 'Commande 344', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-04-05 00:00:00', 'En cours', 50489.71, 'Restauration', 'Commande 345', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-04-25 00:00:00', 'Annulé', 134824.25, 'Restauration', 'Commande 346', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-08-16 00:00:00', 'Annulé', 145732.64, 'Restauration', 'Commande 347', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-03-14 00:00:00', 'Livré', 95581.1, 'Restauration', 'Commande 348', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-02-18 00:00:00', 'Annulé', 179766.92, 'Restauration', 'Commande 349', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-09-25 00:00:00', 'En cours', 68573.52, 'Restauration', 'Commande 350', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-01-22 00:00:00', 'En cours', 48959.09, 'Restauration', 'Commande 351', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-01-24 00:00:00', 'Livré', 22301.82, 'Restauration', 'Commande 352', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-11-02 00:00:00', 'Annulé', 158218.62, 'Restauration', 'Commande 353', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-12-22 00:00:00', 'Annulé', 114794.84, 'Restauration', 'Commande 354', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-01-12 00:00:00', 'Livré', 130476.03, 'Restauration', 'Commande 355', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-05-04 00:00:00', 'Annulé', 120930.01, 'Restauration', 'Commande 356', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-01-01 00:00:00', 'Annulé', 197882.25, 'Restauration', 'Commande 357', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-03-31 00:00:00', 'Annulé', 127603.9, 'Restauration', 'Commande 358', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-11-11 00:00:00', 'Livré', 109033.11, 'Restauration', 'Commande 359', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-12-28 00:00:00', 'En cours', 46506.51, 'Restauration', 'Commande 360', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-10-21 00:00:00', 'En cours', 127723.68, 'Restauration', 'Commande 361', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-08-10 00:00:00', 'Annulé', 31552.32, 'Restauration', 'Commande 362', 30);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-06-17 00:00:00', 'En cours', 99560.55, 'Restauration', 'Commande 363', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-12-04 00:00:00', 'Livré', 178169.2, 'Restauration', 'Commande 364', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-09-28 00:00:00', 'Annulé', 185842.61, 'Restauration', 'Commande 365', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-03-28 00:00:00', 'Annulé', 102279.75, 'Restauration', 'Commande 366', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-07-04 00:00:00', 'Annulé', 16120.84, 'Restauration', 'Commande 367', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-04-11 00:00:00', 'Livré', 104583.09, 'Restauration', 'Commande 368', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-11-07 00:00:00', 'Livré', 108503.87, 'Restauration', 'Commande 369', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-02-12 00:00:00', 'Livré', 139395.66, 'Restauration', 'Commande 370', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-01-20 00:00:00', 'Livré', 25956.29, 'Restauration', 'Commande 371', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-01-25 00:00:00', 'Livré', 54402.07, 'Restauration', 'Commande 372', 88);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-08-01 00:00:00', 'Livré', 88757.89, 'Restauration', 'Commande 373', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-08-31 00:00:00', 'En cours', 98506.84, 'Restauration', 'Commande 374', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-12-04 00:00:00', 'Annulé', 193062.71, 'Restauration', 'Commande 375', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-12-13 00:00:00', 'Annulé', 135974.94, 'Restauration', 'Commande 376', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-13 00:00:00', 'En cours', 39659.97, 'Restauration', 'Commande 377', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-05-06 00:00:00', 'Annulé', 188668.46, 'Restauration', 'Commande 378', 5);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-08-19 00:00:00', 'Annulé', 76523.72, 'Restauration', 'Commande 379', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-06-16 00:00:00', 'En cours', 81347.42, 'Restauration', 'Commande 380', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-03-29 00:00:00', 'En cours', 161927.35, 'Restauration', 'Commande 381', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-12-16 00:00:00', 'Livré', 140642.86, 'Restauration', 'Commande 382', 30);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-11-23 00:00:00', 'Annulé', 101606.69, 'Restauration', 'Commande 383', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-08-18 00:00:00', 'Livré', 20615.53, 'Restauration', 'Commande 384', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-05-14 00:00:00', 'En cours', 194766.65, 'Restauration', 'Commande 385', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-11-03 00:00:00', 'Annulé', 183771.87, 'Restauration', 'Commande 386', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-03-14 00:00:00', 'En cours', 44030.54, 'Restauration', 'Commande 387', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-01-01 00:00:00', 'En cours', 73869.3, 'Restauration', 'Commande 388', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-02-22 00:00:00', 'Annulé', 194106.52, 'Restauration', 'Commande 389', 65);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-10-28 00:00:00', 'Livré', 44930.67, 'Restauration', 'Commande 390', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-12-06 00:00:00', 'Annulé', 112640.65, 'Restauration', 'Commande 391', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-06-22 00:00:00', 'En cours', 101582.86, 'Restauration', 'Commande 392', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-08-06 00:00:00', 'Livré', 158015.43, 'Restauration', 'Commande 393', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-11-01 00:00:00', 'En cours', 196565.25, 'Restauration', 'Commande 394', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-12-17 00:00:00', 'Livré', 146198.34, 'Restauration', 'Commande 395', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-04-04 00:00:00', 'Annulé', 117513.07, 'Restauration', 'Commande 396', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-10-18 00:00:00', 'Livré', 95635.91, 'Restauration', 'Commande 397', 24);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-10-07 00:00:00', 'Livré', 75897.94, 'Restauration', 'Commande 398', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-09-27 00:00:00', 'Annulé', 23639.03, 'Restauration', 'Commande 399', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-07-19 00:00:00', 'Livré', 123861.02, 'Restauration', 'Commande 400', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-12-21 00:00:00', 'Livré', 138270.61, 'Restauration', 'Commande 401', 2);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-01-24 00:00:00', 'Livré', 168006.69, 'Restauration', 'Commande 402', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-02-27 00:00:00', 'Livré', 187548.82, 'Restauration', 'Commande 403', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-11-23 00:00:00', 'En cours', 73271.87, 'Restauration', 'Commande 404', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-02-24 00:00:00', 'Annulé', 118837.8, 'Restauration', 'Commande 405', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-10-25 00:00:00', 'En cours', 164474.24, 'Restauration', 'Commande 406', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-05-24 00:00:00', 'En cours', 102547.03, 'Restauration', 'Commande 407', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-08-04 00:00:00', 'En cours', 76833.08, 'Restauration', 'Commande 408', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-05-12 00:00:00', 'En cours', 194797.61, 'Restauration', 'Commande 409', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-06-25 00:00:00', 'En cours', 75353.3, 'Restauration', 'Commande 410', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-05-21 00:00:00', 'En cours', 33905.2, 'Restauration', 'Commande 411', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-09-19 00:00:00', 'Annulé', 114896.43, 'Restauration', 'Commande 412', 13);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-04-24 00:00:00', 'Annulé', 148160.92, 'Restauration', 'Commande 413', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-12-08 00:00:00', 'Annulé', 91885.1, 'Restauration', 'Commande 414', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-11-15 00:00:00', 'Livré', 89509.77, 'Restauration', 'Commande 415', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-08-13 00:00:00', 'En cours', 65720.18, 'Restauration', 'Commande 416', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-09-19 00:00:00', 'Annulé', 17246.15, 'Restauration', 'Commande 417', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-09 00:00:00', 'Livré', 32931.89, 'Restauration', 'Commande 418', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-08-09 00:00:00', 'Annulé', 158330.8, 'Restauration', 'Commande 419', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-10-21 00:00:00', 'Livré', 115964.98, 'Restauration', 'Commande 420', 30);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-08-20 00:00:00', 'En cours', 96994.47, 'Restauration', 'Commande 421', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-12-09 00:00:00', 'Annulé', 32145.66, 'Restauration', 'Commande 422', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-12-05 00:00:00', 'Livré', 42217.88, 'Restauration', 'Commande 423', 2);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-05-02 00:00:00', 'Annulé', 131696.53, 'Restauration', 'Commande 424', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-07 00:00:00', 'En cours', 111345.63, 'Restauration', 'Commande 425', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-07-24 00:00:00', 'Livré', 110300.47, 'Restauration', 'Commande 426', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-12-06 00:00:00', 'Annulé', 125995.0, 'Restauration', 'Commande 427', 83);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-08-01 00:00:00', 'Annulé', 100143.83, 'Restauration', 'Commande 428', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-09-21 00:00:00', 'Annulé', 61703.95, 'Restauration', 'Commande 429', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-07-02 00:00:00', 'Annulé', 168421.43, 'Restauration', 'Commande 430', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-07-05 00:00:00', 'En cours', 26885.04, 'Restauration', 'Commande 431', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-10-19 00:00:00', 'Annulé', 121123.06, 'Restauration', 'Commande 432', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-12-20 00:00:00', 'Annulé', 143346.6, 'Restauration', 'Commande 433', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-08-16 00:00:00', 'En cours', 11969.47, 'Restauration', 'Commande 434', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-08-27 00:00:00', 'En cours', 68101.62, 'Restauration', 'Commande 435', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-12-24 00:00:00', 'En cours', 24415.64, 'Restauration', 'Commande 436', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-10-04 00:00:00', 'En cours', 193811.98, 'Restauration', 'Commande 437', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-01-27 00:00:00', 'Livré', 191306.13, 'Restauration', 'Commande 438', 77);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-10-14 00:00:00', 'Annulé', 139897.35, 'Restauration', 'Commande 439', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-10-13 00:00:00', 'En cours', 186724.03, 'Restauration', 'Commande 440', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-08-27 00:00:00', 'En cours', 128370.97, 'Restauration', 'Commande 441', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-05-21 00:00:00', 'En cours', 32250.42, 'Restauration', 'Commande 442', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-09-26 00:00:00', 'En cours', 22621.25, 'Restauration', 'Commande 443', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-05-04 00:00:00', 'Livré', 40131.61, 'Restauration', 'Commande 444', 37);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-10-23 00:00:00', 'Livré', 196499.85, 'Restauration', 'Commande 445', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-10-29 00:00:00', 'Livré', 83775.79, 'Restauration', 'Commande 446', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-09 00:00:00', 'Livré', 55376.14, 'Restauration', 'Commande 447', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-11-19 00:00:00', 'Livré', 191106.58, 'Restauration', 'Commande 448', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-05-30 00:00:00', 'En cours', 187420.63, 'Restauration', 'Commande 449', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-10-18 00:00:00', 'En cours', 54491.94, 'Restauration', 'Commande 450', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-02-04 00:00:00', 'Livré', 20696.95, 'Restauration', 'Commande 451', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-12-13 00:00:00', 'Livré', 163513.15, 'Restauration', 'Commande 452', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-05-12 00:00:00', 'En cours', 43449.51, 'Restauration', 'Commande 453', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-08-13 00:00:00', 'En cours', 52221.89, 'Restauration', 'Commande 454', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-11-01 00:00:00', 'Livré', 97364.89, 'Restauration', 'Commande 455', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-08-20 00:00:00', 'En cours', 118967.9, 'Restauration', 'Commande 456', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-09-23 00:00:00', 'Livré', 93126.58, 'Restauration', 'Commande 457', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-12-02 00:00:00', 'En cours', 61061.06, 'Restauration', 'Commande 458', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-04-18 00:00:00', 'En cours', 37930.97, 'Restauration', 'Commande 459', 62);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-08-27 00:00:00', 'Annulé', 198869.56, 'Restauration', 'Commande 460', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-16 00:00:00', 'Livré', 153974.41, 'Restauration', 'Commande 461', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-12-18 00:00:00', 'En cours', 97105.49, 'Restauration', 'Commande 462', 13);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-05-11 00:00:00', 'Livré', 130583.98, 'Restauration', 'Commande 463', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-02-29 00:00:00', 'Annulé', 100978.66, 'Restauration', 'Commande 464', 13);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-15 00:00:00', 'En cours', 56204.77, 'Restauration', 'Commande 465', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-01-07 00:00:00', 'Livré', 70165.3, 'Restauration', 'Commande 466', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-02-05 00:00:00', 'En cours', 142867.24, 'Restauration', 'Commande 467', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-09-24 00:00:00', 'Annulé', 148584.0, 'Restauration', 'Commande 468', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-03-18 00:00:00', 'En cours', 173910.02, 'Restauration', 'Commande 469', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-01-15 00:00:00', 'En cours', 133586.06, 'Restauration', 'Commande 470', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-01-25 00:00:00', 'Livré', 17143.08, 'Restauration', 'Commande 471', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-06-22 00:00:00', 'En cours', 42027.62, 'Restauration', 'Commande 472', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-02-13 00:00:00', 'En cours', 150902.31, 'Restauration', 'Commande 473', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-12-16 00:00:00', 'En cours', 38117.98, 'Restauration', 'Commande 474', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-12-03 00:00:00', 'Annulé', 63676.25, 'Restauration', 'Commande 475', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-02-10 00:00:00', 'Livré', 52171.88, 'Restauration', 'Commande 476', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-05-09 00:00:00', 'En cours', 78626.17, 'Restauration', 'Commande 477', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-02-01 00:00:00', 'En cours', 97023.07, 'Restauration', 'Commande 478', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-01-14 00:00:00', 'En cours', 143046.42, 'Restauration', 'Commande 479', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-11-30 00:00:00', 'Annulé', 134741.59, 'Restauration', 'Commande 480', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-04-04 00:00:00', 'Annulé', 156781.1, 'Restauration', 'Commande 481', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-09-02 00:00:00', 'Livré', 90972.42, 'Restauration', 'Commande 482', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-01-13 00:00:00', 'En cours', 188839.02, 'Restauration', 'Commande 483', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-04-29 00:00:00', 'En cours', 102153.88, 'Restauration', 'Commande 484', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-11-10 00:00:00', 'En cours', 57875.69, 'Restauration', 'Commande 485', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-11-06 00:00:00', 'Annulé', 160174.5, 'Restauration', 'Commande 486', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-12-16 00:00:00', 'En cours', 12460.55, 'Restauration', 'Commande 487', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-01-05 00:00:00', 'En cours', 178635.1, 'Restauration', 'Commande 488', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-05-04 00:00:00', 'En cours', 80108.94, 'Restauration', 'Commande 489', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-07-25 00:00:00', 'Livré', 180484.57, 'Restauration', 'Commande 490', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-01-03 00:00:00', 'Livré', 96845.18, 'Restauration', 'Commande 491', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-06-16 00:00:00', 'En cours', 52076.61, 'Restauration', 'Commande 492', 10);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-09-07 00:00:00', 'Livré', 171774.8, 'Restauration', 'Commande 493', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-10-18 00:00:00', 'Livré', 188151.34, 'Restauration', 'Commande 494', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-03-02 00:00:00', 'Livré', 51852.97, 'Restauration', 'Commande 495', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-05-10 00:00:00', 'En cours', 117053.08, 'Restauration', 'Commande 496', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-08-06 00:00:00', 'Livré', 156008.47, 'Restauration', 'Commande 497', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-02-06 00:00:00', 'Annulé', 50132.7, 'Restauration', 'Commande 498', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-10-28 00:00:00', 'Livré', 131345.26, 'Restauration', 'Commande 499', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-01-26 00:00:00', 'En cours', 119990.91, 'Restauration', 'Commande 500', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-05-23 00:00:00', 'En cours', 154644.85, 'Restauration', 'Commande 501', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-04-08 00:00:00', 'En cours', 92912.94, 'Restauration', 'Commande 502', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-09-11 00:00:00', 'Livré', 116897.25, 'Restauration', 'Commande 503', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-10-18 00:00:00', 'Livré', 131603.8, 'Restauration', 'Commande 504', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-02-02 00:00:00', 'En cours', 67682.47, 'Restauration', 'Commande 505', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-05-07 00:00:00', 'En cours', 122233.78, 'Restauration', 'Commande 506', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-12-25 00:00:00', 'Annulé', 96376.46, 'Restauration', 'Commande 507', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-08-12 00:00:00', 'En cours', 185759.91, 'Restauration', 'Commande 508', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-06-07 00:00:00', 'Annulé', 58377.8, 'Restauration', 'Commande 509', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-02-03 00:00:00', 'En cours', 116971.87, 'Restauration', 'Commande 510', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-10-24 00:00:00', 'Livré', 179245.69, 'Restauration', 'Commande 511', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-10-09 00:00:00', 'Livré', 78451.25, 'Restauration', 'Commande 512', 37);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-07-08 00:00:00', 'Annulé', 191202.82, 'Restauration', 'Commande 513', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-05-08 00:00:00', 'Livré', 117383.32, 'Restauration', 'Commande 514', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-06-01 00:00:00', 'Annulé', 65771.04, 'Restauration', 'Commande 515', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-10-31 00:00:00', 'En cours', 80544.2, 'Restauration', 'Commande 516', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-04-23 00:00:00', 'En cours', 189723.87, 'Restauration', 'Commande 517', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-06-09 00:00:00', 'Annulé', 93867.64, 'Restauration', 'Commande 518', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-02-24 00:00:00', 'Livré', 177195.49, 'Restauration', 'Commande 519', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-01-20 00:00:00', 'Annulé', 49489.24, 'Restauration', 'Commande 520', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-06-27 00:00:00', 'Livré', 57273.59, 'Restauration', 'Commande 521', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-09-05 00:00:00', 'Annulé', 163066.61, 'Restauration', 'Commande 522', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-11-17 00:00:00', 'En cours', 147124.25, 'Restauration', 'Commande 523', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-09-17 00:00:00', 'En cours', 70724.13, 'Restauration', 'Commande 524', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-09-11 00:00:00', 'Annulé', 188174.72, 'Restauration', 'Commande 525', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-03-04 00:00:00', 'En cours', 60764.48, 'Restauration', 'Commande 526', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-01-08 00:00:00', 'En cours', 158723.42, 'Restauration', 'Commande 527', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-12-10 00:00:00', 'En cours', 90308.11, 'Restauration', 'Commande 528', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-01-09 00:00:00', 'Livré', 44000.63, 'Restauration', 'Commande 529', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-06-03 00:00:00', 'Annulé', 10002.98, 'Restauration', 'Commande 530', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-07-09 00:00:00', 'En cours', 161771.9, 'Restauration', 'Commande 531', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-03-11 00:00:00', 'Livré', 60331.11, 'Restauration', 'Commande 532', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-02-26 00:00:00', 'En cours', 133411.41, 'Restauration', 'Commande 533', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-01-18 00:00:00', 'En cours', 73844.85, 'Restauration', 'Commande 534', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-10-09 00:00:00', 'En cours', 101227.79, 'Restauration', 'Commande 535', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-10-20 00:00:00', 'Annulé', 195234.88, 'Restauration', 'Commande 536', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-02-11 00:00:00', 'Annulé', 143589.75, 'Restauration', 'Commande 537', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-02-27 00:00:00', 'Livré', 155296.18, 'Restauration', 'Commande 538', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-11-01 00:00:00', 'En cours', 91373.11, 'Restauration', 'Commande 539', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-01-26 00:00:00', 'En cours', 55061.12, 'Restauration', 'Commande 540', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-01-16 00:00:00', 'En cours', 140853.97, 'Restauration', 'Commande 541', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-07-27 00:00:00', 'Annulé', 128475.02, 'Restauration', 'Commande 542', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-01-24 00:00:00', 'En cours', 22925.5, 'Restauration', 'Commande 543', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-07-22 00:00:00', 'Annulé', 41955.06, 'Restauration', 'Commande 544', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-09-07 00:00:00', 'Annulé', 80670.05, 'Restauration', 'Commande 545', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-01-31 00:00:00', 'Annulé', 97033.84, 'Restauration', 'Commande 546', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-02-24 00:00:00', 'Livré', 116935.32, 'Restauration', 'Commande 547', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-12-05 00:00:00', 'Livré', 146968.64, 'Restauration', 'Commande 548', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-10-22 00:00:00', 'Livré', 29775.65, 'Restauration', 'Commande 549', 24);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-06-12 00:00:00', 'En cours', 175272.1, 'Restauration', 'Commande 550', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-11-29 00:00:00', 'Livré', 148521.04, 'Restauration', 'Commande 551', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-12-20 00:00:00', 'Livré', 196752.22, 'Restauration', 'Commande 552', 73);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-07-15 00:00:00', 'Livré', 117262.53, 'Restauration', 'Commande 553', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-03-16 00:00:00', 'En cours', 35576.94, 'Restauration', 'Commande 554', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-07-05 00:00:00', 'En cours', 58142.26, 'Restauration', 'Commande 555', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-12-13 00:00:00', 'Livré', 77874.6, 'Restauration', 'Commande 556', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-10-02 00:00:00', 'En cours', 189601.19, 'Restauration', 'Commande 557', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-11-13 00:00:00', 'Livré', 63811.67, 'Restauration', 'Commande 558', 65);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-04-20 00:00:00', 'Livré', 10041.41, 'Restauration', 'Commande 559', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-06-12 00:00:00', 'Annulé', 75219.14, 'Restauration', 'Commande 560', 62);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-12-06 00:00:00', 'Annulé', 34253.44, 'Restauration', 'Commande 561', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-10-10 00:00:00', 'Livré', 176991.25, 'Restauration', 'Commande 562', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-26 00:00:00', 'Annulé', 121954.54, 'Restauration', 'Commande 563', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-05-05 00:00:00', 'Livré', 60360.08, 'Restauration', 'Commande 564', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-03-03 00:00:00', 'En cours', 25523.65, 'Restauration', 'Commande 565', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-04-01 00:00:00', 'Livré', 53410.03, 'Restauration', 'Commande 566', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-01-17 00:00:00', 'Annulé', 145695.62, 'Restauration', 'Commande 567', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-09-18 00:00:00', 'En cours', 72834.64, 'Restauration', 'Commande 568', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-02-28 00:00:00', 'Livré', 16418.29, 'Restauration', 'Commande 569', 13);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-03-29 00:00:00', 'Annulé', 119596.16, 'Restauration', 'Commande 570', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-05-01 00:00:00', 'Livré', 59849.14, 'Restauration', 'Commande 571', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-05-09 00:00:00', 'Livré', 177797.28, 'Restauration', 'Commande 572', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-04-23 00:00:00', 'En cours', 152278.87, 'Restauration', 'Commande 573', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-08-17 00:00:00', 'En cours', 181064.38, 'Restauration', 'Commande 574', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-02-24 00:00:00', 'En cours', 25627.62, 'Restauration', 'Commande 575', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-05-08 00:00:00', 'En cours', 153895.88, 'Restauration', 'Commande 576', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-01-19 00:00:00', 'En cours', 92916.28, 'Restauration', 'Commande 577', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-06-25 00:00:00', 'Livré', 174724.25, 'Restauration', 'Commande 578', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-03-28 00:00:00', 'En cours', 149050.11, 'Restauration', 'Commande 579', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-12-17 00:00:00', 'Livré', 20997.87, 'Restauration', 'Commande 580', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-12-12 00:00:00', 'Annulé', 123357.83, 'Restauration', 'Commande 581', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-11-05 00:00:00', 'Livré', 162664.28, 'Restauration', 'Commande 582', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-12-22 00:00:00', 'Annulé', 21979.93, 'Restauration', 'Commande 583', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-04-23 00:00:00', 'Annulé', 130916.63, 'Restauration', 'Commande 584', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-01-28 00:00:00', 'Annulé', 73862.74, 'Restauration', 'Commande 585', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-12-15 00:00:00', 'Livré', 178696.64, 'Restauration', 'Commande 586', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-05-30 00:00:00', 'Livré', 31555.34, 'Restauration', 'Commande 587', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-10-06 00:00:00', 'Annulé', 29210.25, 'Restauration', 'Commande 588', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-02-28 00:00:00', 'En cours', 195303.1, 'Restauration', 'Commande 589', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-08-13 00:00:00', 'Livré', 175058.73, 'Restauration', 'Commande 590', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-03-27 00:00:00', 'En cours', 89907.78, 'Restauration', 'Commande 591', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-01-08 00:00:00', 'Annulé', 15568.82, 'Restauration', 'Commande 592', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-10-21 00:00:00', 'Livré', 17316.91, 'Restauration', 'Commande 593', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-05-24 00:00:00', 'Annulé', 142685.22, 'Restauration', 'Commande 594', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-02-17 00:00:00', 'Annulé', 153985.62, 'Restauration', 'Commande 595', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-11-29 00:00:00', 'Annulé', 153149.88, 'Restauration', 'Commande 596', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-11-19 00:00:00', 'Annulé', 178368.38, 'Restauration', 'Commande 597', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-12-04 00:00:00', 'Annulé', 86958.72, 'Restauration', 'Commande 598', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-11-23 00:00:00', 'Livré', 59293.55, 'Restauration', 'Commande 599', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-02-05 00:00:00', 'En cours', 39248.26, 'Restauration', 'Commande 600', 54);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-01-16 00:00:00', 'Annulé', 38164.54, 'Restauration', 'Commande 601', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-02-26 00:00:00', 'En cours', 108073.96, 'Restauration', 'Commande 602', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-06-30 00:00:00', 'Livré', 46315.45, 'Restauration', 'Commande 603', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-03-08 00:00:00', 'En cours', 86712.44, 'Restauration', 'Commande 604', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-07-15 00:00:00', 'Livré', 53274.54, 'Restauration', 'Commande 605', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-05-14 00:00:00', 'Annulé', 153921.92, 'Restauration', 'Commande 606', 40);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-10-31 00:00:00', 'En cours', 117701.55, 'Restauration', 'Commande 607', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-07-18 00:00:00', 'Annulé', 120672.71, 'Restauration', 'Commande 608', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-04-23 00:00:00', 'Livré', 195581.65, 'Restauration', 'Commande 609', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-03-08 00:00:00', 'Livré', 79183.13, 'Restauration', 'Commande 610', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-07-25 00:00:00', 'En cours', 92116.97, 'Restauration', 'Commande 611', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-05-17 00:00:00', 'Livré', 63217.06, 'Restauration', 'Commande 612', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-05-24 00:00:00', 'Livré', 161486.71, 'Restauration', 'Commande 613', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-10-25 00:00:00', 'Annulé', 193964.63, 'Restauration', 'Commande 614', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-03-22 00:00:00', 'Livré', 136447.24, 'Restauration', 'Commande 615', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-01-02 00:00:00', 'Annulé', 84426.41, 'Restauration', 'Commande 616', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-12-12 00:00:00', 'Livré', 30515.78, 'Restauration', 'Commande 617', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-02-03 00:00:00', 'En cours', 39933.28, 'Restauration', 'Commande 618', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-02-26 00:00:00', 'Annulé', 67831.02, 'Restauration', 'Commande 619', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-04-06 00:00:00', 'En cours', 101483.56, 'Restauration', 'Commande 620', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-12-02 00:00:00', 'Annulé', 134173.19, 'Restauration', 'Commande 621', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-09-08 00:00:00', 'Livré', 88032.98, 'Restauration', 'Commande 622', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-11-17 00:00:00', 'En cours', 175010.97, 'Restauration', 'Commande 623', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-10-26 00:00:00', 'En cours', 11929.89, 'Restauration', 'Commande 624', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-12-28 00:00:00', 'Annulé', 165803.72, 'Restauration', 'Commande 625', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-05-17 00:00:00', 'Livré', 116689.92, 'Restauration', 'Commande 626', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-09-07 00:00:00', 'Livré', 197473.06, 'Restauration', 'Commande 627', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-01-27 00:00:00', 'Livré', 195674.36, 'Restauration', 'Commande 628', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-30 00:00:00', 'Livré', 67473.27, 'Restauration', 'Commande 629', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-03-26 00:00:00', 'En cours', 98729.5, 'Restauration', 'Commande 630', 88);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-07-02 00:00:00', 'En cours', 95711.13, 'Restauration', 'Commande 631', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-05-07 00:00:00', 'Livré', 79171.19, 'Restauration', 'Commande 632', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-08-05 00:00:00', 'Livré', 106538.39, 'Restauration', 'Commande 633', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-02-26 00:00:00', 'En cours', 87966.47, 'Restauration', 'Commande 634', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-12-30 00:00:00', 'Livré', 76099.99, 'Restauration', 'Commande 635', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-03-19 00:00:00', 'Annulé', 148969.17, 'Restauration', 'Commande 636', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-12-24 00:00:00', 'Livré', 125332.65, 'Restauration', 'Commande 637', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-05-30 00:00:00', 'Livré', 108902.59, 'Restauration', 'Commande 638', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-06-09 00:00:00', 'Livré', 161237.55, 'Restauration', 'Commande 639', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-02-10 00:00:00', 'Annulé', 183894.8, 'Restauration', 'Commande 640', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-11-16 00:00:00', 'En cours', 136843.64, 'Restauration', 'Commande 641', 43);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-08-26 00:00:00', 'En cours', 34899.67, 'Restauration', 'Commande 642', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-04-17 00:00:00', 'Livré', 70813.73, 'Restauration', 'Commande 643', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-02-25 00:00:00', 'En cours', 89886.68, 'Restauration', 'Commande 644', 55);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-09-11 00:00:00', 'Livré', 152538.71, 'Restauration', 'Commande 645', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-05-21 00:00:00', 'Livré', 128023.79, 'Restauration', 'Commande 646', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-01-06 00:00:00', 'En cours', 109677.31, 'Restauration', 'Commande 647', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-10-05 00:00:00', 'En cours', 173358.37, 'Restauration', 'Commande 648', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-20 00:00:00', 'Livré', 107973.14, 'Restauration', 'Commande 649', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-01-11 00:00:00', 'Annulé', 13952.04, 'Restauration', 'Commande 650', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-02-25 00:00:00', 'En cours', 133591.07, 'Restauration', 'Commande 651', 77);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-07-30 00:00:00', 'Annulé', 126671.32, 'Restauration', 'Commande 652', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-09-04 00:00:00', 'Annulé', 69190.65, 'Restauration', 'Commande 653', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-02-24 00:00:00', 'Annulé', 161447.68, 'Restauration', 'Commande 654', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-10-30 00:00:00', 'Livré', 166928.13, 'Restauration', 'Commande 655', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-04-21 00:00:00', 'Livré', 186952.08, 'Restauration', 'Commande 656', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-04-22 00:00:00', 'Livré', 70218.15, 'Restauration', 'Commande 657', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-11-14 00:00:00', 'Annulé', 142562.92, 'Restauration', 'Commande 658', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-04-03 00:00:00', 'Annulé', 131583.53, 'Restauration', 'Commande 659', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-05-19 00:00:00', 'Livré', 48656.45, 'Restauration', 'Commande 660', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-10-31 00:00:00', 'Livré', 135421.52, 'Restauration', 'Commande 661', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-11-07 00:00:00', 'En cours', 92692.99, 'Restauration', 'Commande 662', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-10-08 00:00:00', 'Livré', 52427.66, 'Restauration', 'Commande 663', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-07-13 00:00:00', 'Livré', 165495.92, 'Restauration', 'Commande 664', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-03-20 00:00:00', 'En cours', 136396.32, 'Restauration', 'Commande 665', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-12-23 00:00:00', 'Livré', 154838.6, 'Restauration', 'Commande 666', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-04-06 00:00:00', 'Livré', 83455.28, 'Restauration', 'Commande 667', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-09-18 00:00:00', 'En cours', 76148.23, 'Restauration', 'Commande 668', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-09-26 00:00:00', 'Annulé', 145825.05, 'Restauration', 'Commande 669', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-06-02 00:00:00', 'Annulé', 141945.52, 'Restauration', 'Commande 670', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-12-26 00:00:00', 'Annulé', 91506.14, 'Restauration', 'Commande 671', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-05-27 00:00:00', 'Annulé', 120822.46, 'Restauration', 'Commande 672', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-08-07 00:00:00', 'Livré', 102785.72, 'Restauration', 'Commande 673', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-06-03 00:00:00', 'Annulé', 65132.86, 'Restauration', 'Commande 674', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-04-02 00:00:00', 'Livré', 122096.38, 'Restauration', 'Commande 675', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-22 00:00:00', 'En cours', 22798.37, 'Restauration', 'Commande 676', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-04-03 00:00:00', 'Livré', 60482.1, 'Restauration', 'Commande 677', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-01-15 00:00:00', 'En cours', 177699.4, 'Restauration', 'Commande 678', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-05-08 00:00:00', 'Livré', 118765.59, 'Restauration', 'Commande 679', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-04-11 00:00:00', 'Annulé', 92741.83, 'Restauration', 'Commande 680', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-10-08 00:00:00', 'Annulé', 19768.52, 'Restauration', 'Commande 681', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-11-19 00:00:00', 'En cours', 100738.46, 'Restauration', 'Commande 682', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-11-15 00:00:00', 'Annulé', 129304.55, 'Restauration', 'Commande 683', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-02-24 00:00:00', 'En cours', 132641.79, 'Restauration', 'Commande 684', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-03-05 00:00:00', 'Livré', 156660.81, 'Restauration', 'Commande 685', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-01-19 00:00:00', 'Annulé', 37539.75, 'Restauration', 'Commande 686', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-04-29 00:00:00', 'Livré', 196293.43, 'Restauration', 'Commande 687', 55);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-07-17 00:00:00', 'Annulé', 12974.36, 'Restauration', 'Commande 688', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-03-19 00:00:00', 'Annulé', 139969.31, 'Restauration', 'Commande 689', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-08-26 00:00:00', 'En cours', 199242.54, 'Restauration', 'Commande 690', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-05-01 00:00:00', 'Livré', 177023.79, 'Restauration', 'Commande 691', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-08-25 00:00:00', 'En cours', 198486.98, 'Restauration', 'Commande 692', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-07-22 00:00:00', 'En cours', 123050.33, 'Restauration', 'Commande 693', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-10-07 00:00:00', 'Annulé', 136657.68, 'Restauration', 'Commande 694', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-02-03 00:00:00', 'En cours', 53335.79, 'Restauration', 'Commande 695', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-04-01 00:00:00', 'Livré', 93647.67, 'Restauration', 'Commande 696', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-16 00:00:00', 'En cours', 145373.79, 'Restauration', 'Commande 697', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-05-08 00:00:00', 'Annulé', 54667.01, 'Restauration', 'Commande 698', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-09-21 00:00:00', 'En cours', 77466.47, 'Restauration', 'Commande 699', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-06-07 00:00:00', 'Livré', 170211.23, 'Restauration', 'Commande 700', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-09-29 00:00:00', 'Livré', 25685.73, 'Restauration', 'Commande 701', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-12-28 00:00:00', 'Livré', 89785.66, 'Restauration', 'Commande 702', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-02-11 00:00:00', 'Livré', 65696.2, 'Restauration', 'Commande 703', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-10-21 00:00:00', 'Livré', 79569.42, 'Restauration', 'Commande 704', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-05-27 00:00:00', 'Livré', 147074.87, 'Restauration', 'Commande 705', 24);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-06-18 00:00:00', 'Livré', 171591.54, 'Restauration', 'Commande 706', 88);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-05-20 00:00:00', 'Annulé', 188920.79, 'Restauration', 'Commande 707', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-10-25 00:00:00', 'En cours', 59700.44, 'Restauration', 'Commande 708', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-08-09 00:00:00', 'En cours', 19742.85, 'Restauration', 'Commande 709', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-04-06 00:00:00', 'Annulé', 161660.42, 'Restauration', 'Commande 710', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-04-02 00:00:00', 'Annulé', 157252.28, 'Restauration', 'Commande 711', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-02-13 00:00:00', 'En cours', 183615.56, 'Restauration', 'Commande 712', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-05-14 00:00:00', 'En cours', 51037.92, 'Restauration', 'Commande 713', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-09-08 00:00:00', 'Livré', 177727.62, 'Restauration', 'Commande 714', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-05-08 00:00:00', 'En cours', 44824.22, 'Restauration', 'Commande 715', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-03-16 00:00:00', 'Annulé', 26890.11, 'Restauration', 'Commande 716', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-11-03 00:00:00', 'Annulé', 17606.93, 'Restauration', 'Commande 717', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-09-01 00:00:00', 'Annulé', 126329.38, 'Restauration', 'Commande 718', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-09-05 00:00:00', 'Annulé', 117879.98, 'Restauration', 'Commande 719', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-11-15 00:00:00', 'Annulé', 27166.79, 'Restauration', 'Commande 720', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-05-04 00:00:00', 'Annulé', 143295.16, 'Restauration', 'Commande 721', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-09-14 00:00:00', 'Livré', 103839.98, 'Restauration', 'Commande 722', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-06 00:00:00', 'Annulé', 121011.98, 'Restauration', 'Commande 723', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-07-20 00:00:00', 'En cours', 167331.52, 'Restauration', 'Commande 724', 2);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-11-08 00:00:00', 'Annulé', 40373.17, 'Restauration', 'Commande 725', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-08-30 00:00:00', 'En cours', 188955.21, 'Restauration', 'Commande 726', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-08-27 00:00:00', 'En cours', 90202.64, 'Restauration', 'Commande 727', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-11-25 00:00:00', 'Annulé', 98540.66, 'Restauration', 'Commande 728', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-01-01 00:00:00', 'En cours', 36615.44, 'Restauration', 'Commande 729', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-08-02 00:00:00', 'Annulé', 53893.75, 'Restauration', 'Commande 730', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-02-16 00:00:00', 'En cours', 14299.0, 'Restauration', 'Commande 731', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-08-13 00:00:00', 'Annulé', 100905.75, 'Restauration', 'Commande 732', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-06-09 00:00:00', 'En cours', 43462.57, 'Restauration', 'Commande 733', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-09-30 00:00:00', 'Livré', 193071.8, 'Restauration', 'Commande 734', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-02-02 00:00:00', 'En cours', 87936.64, 'Restauration', 'Commande 735', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-03-25 00:00:00', 'Annulé', 53297.43, 'Restauration', 'Commande 736', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-04-17 00:00:00', 'Livré', 57778.76, 'Restauration', 'Commande 737', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-06 00:00:00', 'En cours', 70908.25, 'Restauration', 'Commande 738', 44);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-01-22 00:00:00', 'En cours', 51626.1, 'Restauration', 'Commande 739', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-05-08 00:00:00', 'Livré', 155386.13, 'Restauration', 'Commande 740', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-08-04 00:00:00', 'En cours', 27807.06, 'Restauration', 'Commande 741', 37);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-10-31 00:00:00', 'En cours', 25077.3, 'Restauration', 'Commande 742', 63);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-09-27 00:00:00', 'Livré', 28453.91, 'Restauration', 'Commande 743', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-04-27 00:00:00', 'Livré', 116286.22, 'Restauration', 'Commande 744', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-09-01 00:00:00', 'Livré', 78600.77, 'Restauration', 'Commande 745', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-11 00:00:00', 'Livré', 28662.16, 'Restauration', 'Commande 746', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-06-27 00:00:00', 'En cours', 118650.69, 'Restauration', 'Commande 747', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-07-26 00:00:00', 'Annulé', 107548.67, 'Restauration', 'Commande 748', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-07 00:00:00', 'Livré', 166836.45, 'Restauration', 'Commande 749', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-09-02 00:00:00', 'Annulé', 17916.72, 'Restauration', 'Commande 750', 77);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-05-11 00:00:00', 'Livré', 23442.43, 'Restauration', 'Commande 751', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-06-04 00:00:00', 'Livré', 170151.18, 'Restauration', 'Commande 752', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-04-16 00:00:00', 'Livré', 67664.38, 'Restauration', 'Commande 753', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-12-05 00:00:00', 'En cours', 164880.3, 'Restauration', 'Commande 754', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-09-10 00:00:00', 'Annulé', 160361.58, 'Restauration', 'Commande 755', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-05-21 00:00:00', 'En cours', 31497.02, 'Restauration', 'Commande 756', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-04-20 00:00:00', 'Livré', 35450.95, 'Restauration', 'Commande 757', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-04-20 00:00:00', 'Annulé', 171085.31, 'Restauration', 'Commande 758', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-09 00:00:00', 'Livré', 74308.81, 'Restauration', 'Commande 759', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-01-15 00:00:00', 'Annulé', 89936.58, 'Restauration', 'Commande 760', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-03-05 00:00:00', 'En cours', 195987.81, 'Restauration', 'Commande 761', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-04-01 00:00:00', 'Annulé', 38384.3, 'Restauration', 'Commande 762', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-04-16 00:00:00', 'En cours', 194770.55, 'Restauration', 'Commande 763', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-09-03 00:00:00', 'Livré', 48654.39, 'Restauration', 'Commande 764', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-04-28 00:00:00', 'En cours', 52679.98, 'Restauration', 'Commande 765', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-08-25 00:00:00', 'Livré', 173241.33, 'Restauration', 'Commande 766', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-06-28 00:00:00', 'En cours', 32055.97, 'Restauration', 'Commande 767', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-06-02 00:00:00', 'En cours', 79578.11, 'Restauration', 'Commande 768', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-03-13 00:00:00', 'Livré', 48189.71, 'Restauration', 'Commande 769', 92);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-08-19 00:00:00', 'Livré', 99003.23, 'Restauration', 'Commande 770', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-01-08 00:00:00', 'En cours', 20434.72, 'Restauration', 'Commande 771', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-08-09 00:00:00', 'Livré', 58412.3, 'Restauration', 'Commande 772', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-07-05 00:00:00', 'En cours', 33116.67, 'Restauration', 'Commande 773', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-06-28 00:00:00', 'Annulé', 93551.06, 'Restauration', 'Commande 774', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-07-03 00:00:00', 'Annulé', 70142.7, 'Restauration', 'Commande 775', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-12-17 00:00:00', 'Annulé', 82357.57, 'Restauration', 'Commande 776', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-04-21 00:00:00', 'En cours', 175774.51, 'Restauration', 'Commande 777', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-10-08 00:00:00', 'Annulé', 191718.37, 'Restauration', 'Commande 778', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-11-19 00:00:00', 'En cours', 83964.19, 'Restauration', 'Commande 779', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-03-07 00:00:00', 'En cours', 84531.51, 'Restauration', 'Commande 780', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-07-01 00:00:00', 'Annulé', 189113.72, 'Restauration', 'Commande 781', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-12-14 00:00:00', 'Annulé', 149067.2, 'Restauration', 'Commande 782', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-11-15 00:00:00', 'Livré', 35240.73, 'Restauration', 'Commande 783', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-06-17 00:00:00', 'Livré', 129758.84, 'Restauration', 'Commande 784', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-08-22 00:00:00', 'Livré', 149526.26, 'Restauration', 'Commande 785', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-09-19 00:00:00', 'En cours', 79980.58, 'Restauration', 'Commande 786', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-05-26 00:00:00', 'Annulé', 62384.97, 'Restauration', 'Commande 787', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-01-20 00:00:00', 'Livré', 57027.01, 'Restauration', 'Commande 788', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-28 00:00:00', 'En cours', 27458.99, 'Restauration', 'Commande 789', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-03-03 00:00:00', 'Livré', 22028.79, 'Restauration', 'Commande 790', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-06-13 00:00:00', 'En cours', 28554.74, 'Restauration', 'Commande 791', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-05-30 00:00:00', 'Livré', 146309.98, 'Restauration', 'Commande 792', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-02-26 00:00:00', 'En cours', 115024.29, 'Restauration', 'Commande 793', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-25 00:00:00', 'Annulé', 77704.93, 'Restauration', 'Commande 794', 61);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-03-19 00:00:00', 'Annulé', 127436.35, 'Restauration', 'Commande 795', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-08-02 00:00:00', 'En cours', 103812.51, 'Restauration', 'Commande 796', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-02-10 00:00:00', 'Livré', 79228.36, 'Restauration', 'Commande 797', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-06-30 00:00:00', 'Annulé', 118050.14, 'Restauration', 'Commande 798', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-11-09 00:00:00', 'Livré', 62471.43, 'Restauration', 'Commande 799', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-12-20 00:00:00', 'En cours', 71179.48, 'Restauration', 'Commande 800', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-08-07 00:00:00', 'En cours', 174721.05, 'Restauration', 'Commande 801', 3);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-08-08 00:00:00', 'Annulé', 129531.52, 'Restauration', 'Commande 802', 87);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-04-01 00:00:00', 'Livré', 46691.85, 'Restauration', 'Commande 803', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-08-27 00:00:00', 'Annulé', 185636.15, 'Restauration', 'Commande 804', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-02-24 00:00:00', 'Livré', 185116.46, 'Restauration', 'Commande 805', 14);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-03-07 00:00:00', 'Livré', 93479.72, 'Restauration', 'Commande 806', 68);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-01-23 00:00:00', 'En cours', 127071.6, 'Restauration', 'Commande 807', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-05-05 00:00:00', 'En cours', 119339.39, 'Restauration', 'Commande 808', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-03-16 00:00:00', 'En cours', 153241.26, 'Restauration', 'Commande 809', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-09-27 00:00:00', 'Annulé', 146318.94, 'Restauration', 'Commande 810', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-07-26 00:00:00', 'Livré', 175509.23, 'Restauration', 'Commande 811', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-30 00:00:00', 'Annulé', 62604.49, 'Restauration', 'Commande 812', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-06-17 00:00:00', 'En cours', 145914.68, 'Restauration', 'Commande 813', 88);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-24 00:00:00', 'Annulé', 119693.86, 'Restauration', 'Commande 814', 52);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-07-10 00:00:00', 'Livré', 195551.73, 'Restauration', 'Commande 815', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-15 00:00:00', 'Annulé', 178631.28, 'Restauration', 'Commande 816', 27);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-06-10 00:00:00', 'En cours', 99771.69, 'Restauration', 'Commande 817', 81);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-04-05 00:00:00', 'En cours', 64857.64, 'Restauration', 'Commande 818', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-01-01 00:00:00', 'En cours', 145133.82, 'Restauration', 'Commande 819', 73);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-07-07 00:00:00', 'Annulé', 162674.36, 'Restauration', 'Commande 820', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-08-30 00:00:00', 'Annulé', 138101.71, 'Restauration', 'Commande 821', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-12-05 00:00:00', 'Livré', 30516.28, 'Restauration', 'Commande 822', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-10-13 00:00:00', 'En cours', 22324.38, 'Restauration', 'Commande 823', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-02-07 00:00:00', 'Annulé', 150341.8, 'Restauration', 'Commande 824', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-10-25 00:00:00', 'En cours', 19943.97, 'Restauration', 'Commande 825', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-12-23 00:00:00', 'En cours', 133340.56, 'Restauration', 'Commande 826', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-12-16 00:00:00', 'En cours', 119774.79, 'Restauration', 'Commande 827', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-08-23 00:00:00', 'Livré', 71074.71, 'Restauration', 'Commande 828', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-17 00:00:00', 'En cours', 16648.71, 'Restauration', 'Commande 829', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-02-27 00:00:00', 'En cours', 185666.05, 'Restauration', 'Commande 830', 29);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-02-06 00:00:00', 'En cours', 177347.08, 'Restauration', 'Commande 831', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-09-04 00:00:00', 'Annulé', 70356.15, 'Restauration', 'Commande 832', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-07-11 00:00:00', 'Livré', 36838.86, 'Restauration', 'Commande 833', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-04-27 00:00:00', 'Livré', 114358.64, 'Restauration', 'Commande 834', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-08-19 00:00:00', 'En cours', 179954.29, 'Restauration', 'Commande 835', 67);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-07-15 00:00:00', 'En cours', 165174.41, 'Restauration', 'Commande 836', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-06-30 00:00:00', 'En cours', 137496.23, 'Restauration', 'Commande 837', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-08-13 00:00:00', 'Livré', 89089.9, 'Restauration', 'Commande 838', 22);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-05-17 00:00:00', 'Livré', 133679.19, 'Restauration', 'Commande 839', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-01-05 00:00:00', 'Annulé', 75393.42, 'Restauration', 'Commande 840', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-08-17 00:00:00', 'Livré', 44291.03, 'Restauration', 'Commande 841', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-08-27 00:00:00', 'En cours', 139700.42, 'Restauration', 'Commande 842', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-06-03 00:00:00', 'Annulé', 142578.06, 'Restauration', 'Commande 843', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-02-21 00:00:00', 'Annulé', 118698.53, 'Restauration', 'Commande 844', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-09-25 00:00:00', 'Livré', 10283.99, 'Restauration', 'Commande 845', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-06-01 00:00:00', 'Livré', 16202.26, 'Restauration', 'Commande 846', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-08-11 00:00:00', 'Livré', 193491.11, 'Restauration', 'Commande 847', 55);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-10-29 00:00:00', 'Annulé', 177313.47, 'Restauration', 'Commande 848', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-06-17 00:00:00', 'En cours', 83465.54, 'Restauration', 'Commande 849', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-12-06 00:00:00', 'En cours', 53504.0, 'Restauration', 'Commande 850', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-10-28 00:00:00', 'Livré', 66983.42, 'Restauration', 'Commande 851', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-03-14 00:00:00', 'Livré', 182660.4, 'Restauration', 'Commande 852', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-11-17 00:00:00', 'En cours', 100626.33, 'Restauration', 'Commande 853', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-08-21 00:00:00', 'En cours', 154937.07, 'Restauration', 'Commande 854', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-07-10 00:00:00', 'Livré', 54341.59, 'Restauration', 'Commande 855', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-03-20 00:00:00', 'En cours', 98803.9, 'Restauration', 'Commande 856', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-06-01 00:00:00', 'En cours', 135327.3, 'Restauration', 'Commande 857', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-11-12 00:00:00', 'En cours', 56973.7, 'Restauration', 'Commande 858', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-05-07 00:00:00', 'Annulé', 165008.34, 'Restauration', 'Commande 859', 38);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-03-06 00:00:00', 'Annulé', 20469.97, 'Restauration', 'Commande 860', 100);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-09-03 00:00:00', 'Livré', 61743.94, 'Restauration', 'Commande 861', 33);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-04-14 00:00:00', 'Livré', 31941.74, 'Restauration', 'Commande 862', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-12-30 00:00:00', 'Annulé', 199703.41, 'Restauration', 'Commande 863', 11);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-08-04 00:00:00', 'Livré', 92271.61, 'Restauration', 'Commande 864', 50);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-11-04 00:00:00', 'En cours', 54213.76, 'Restauration', 'Commande 865', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-07-10 00:00:00', 'En cours', 22823.09, 'Restauration', 'Commande 866', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-05-02 00:00:00', 'En cours', 89195.21, 'Restauration', 'Commande 867', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-04-17 00:00:00', 'Livré', 115847.27, 'Restauration', 'Commande 868', 57);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-12-12 00:00:00', 'En cours', 147663.96, 'Restauration', 'Commande 869', 75);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-12-06 00:00:00', 'Annulé', 39841.2, 'Restauration', 'Commande 870', 83);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-03-09 00:00:00', 'Livré', 130678.66, 'Restauration', 'Commande 871', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-12-12 00:00:00', 'Annulé', 199688.56, 'Restauration', 'Commande 872', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-09-13 00:00:00', 'En cours', 49764.38, 'Restauration', 'Commande 873', 26);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-12-02 00:00:00', 'En cours', 132114.01, 'Restauration', 'Commande 874', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-04-03 00:00:00', 'Livré', 78085.35, 'Restauration', 'Commande 875', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-05-17 00:00:00', 'Livré', 76246.67, 'Restauration', 'Commande 876', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-04-02 00:00:00', 'Livré', 30192.71, 'Restauration', 'Commande 877', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-10-26 00:00:00', 'Livré', 31501.86, 'Restauration', 'Commande 878', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-01-18 00:00:00', 'Livré', 19048.31, 'Restauration', 'Commande 879', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-07-25 00:00:00', 'En cours', 123652.2, 'Restauration', 'Commande 880', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-11-02 00:00:00', 'Livré', 150584.92, 'Restauration', 'Commande 881', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-10-18 00:00:00', 'Livré', 134853.61, 'Restauration', 'Commande 882', 76);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-11-03 00:00:00', 'Livré', 131769.69, 'Restauration', 'Commande 883', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-07-17 00:00:00', 'En cours', 24978.23, 'Restauration', 'Commande 884', 84);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-02-19 00:00:00', 'En cours', 150790.93, 'Restauration', 'Commande 885', 73);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-04-18 00:00:00', 'Annulé', 53463.27, 'Restauration', 'Commande 886', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-07-01 00:00:00', 'Annulé', 14202.65, 'Restauration', 'Commande 887', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-03-25 00:00:00', 'En cours', 65525.07, 'Restauration', 'Commande 888', 45);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-01-26 00:00:00', 'Livré', 127911.03, 'Restauration', 'Commande 889', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-08-15 00:00:00', 'En cours', 78820.99, 'Restauration', 'Commande 890', 13);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-01-11 00:00:00', 'Annulé', 152749.17, 'Restauration', 'Commande 891', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-03-18 00:00:00', 'Annulé', 89236.06, 'Restauration', 'Commande 892', 64);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10025, '2024-02-17 00:00:00', 'Annulé', 68364.38, 'Restauration', 'Commande 893', 66);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-12-09 00:00:00', 'En cours', 152445.42, 'Restauration', 'Commande 894', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-04-21 00:00:00', 'En cours', 86008.6, 'Restauration', 'Commande 895', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-01-12 00:00:00', 'En cours', 156395.53, 'Restauration', 'Commande 896', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-02-08 00:00:00', 'En cours', 34338.78, 'Restauration', 'Commande 897', 46);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-03-10 00:00:00', 'Annulé', 29769.42, 'Restauration', 'Commande 898', 82);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-01-29 00:00:00', 'En cours', 154457.56, 'Restauration', 'Commande 899', 48);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10022, '2024-12-25 00:00:00', 'En cours', 176543.28, 'Restauration', 'Commande 900', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10033, '2024-03-20 00:00:00', 'Annulé', 96926.11, 'Restauration', 'Commande 901', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-01-05 00:00:00', 'Livré', 40177.52, 'Restauration', 'Commande 902', 30);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-11-24 00:00:00', 'En cours', 60618.95, 'Restauration', 'Commande 903', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-01-16 00:00:00', 'Annulé', 35996.94, 'Restauration', 'Commande 904', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-06-06 00:00:00', 'En cours', 13692.69, 'Restauration', 'Commande 905', 79);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-08-12 00:00:00', 'Annulé', 179407.16, 'Restauration', 'Commande 906', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10005, '2024-05-24 00:00:00', 'Livré', 192246.32, 'Restauration', 'Commande 907', 90);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10004, '2024-07-30 00:00:00', 'Livré', 65121.41, 'Restauration', 'Commande 908', 49);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-01-30 00:00:00', 'Livré', 149663.51, 'Restauration', 'Commande 909', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-11-06 00:00:00', 'Annulé', 178960.82, 'Restauration', 'Commande 910', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-03-24 00:00:00', 'Livré', 196832.33, 'Restauration', 'Commande 911', 23);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-09-05 00:00:00', 'Annulé', 74603.67, 'Restauration', 'Commande 912', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-03-22 00:00:00', 'Annulé', 63656.11, 'Restauration', 'Commande 913', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-02-10 00:00:00', 'Livré', 171086.4, 'Restauration', 'Commande 914', 2);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10032, '2024-05-23 00:00:00', 'Livré', 167762.89, 'Restauration', 'Commande 915', 5);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-07-21 00:00:00', 'Annulé', 52501.61, 'Restauration', 'Commande 916', 24);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10001, '2024-08-23 00:00:00', 'En cours', 181967.25, 'Restauration', 'Commande 917', 80);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-12-27 00:00:00', 'Livré', 151654.25, 'Restauration', 'Commande 918', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-22 00:00:00', 'Livré', 39652.62, 'Restauration', 'Commande 919', 17);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-03-22 00:00:00', 'Annulé', 97595.08, 'Restauration', 'Commande 920', 59);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-09-09 00:00:00', 'Livré', 191209.11, 'Restauration', 'Commande 921', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-07-16 00:00:00', 'En cours', 187850.93, 'Restauration', 'Commande 922', 93);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-09-02 00:00:00', 'Livré', 142402.82, 'Restauration', 'Commande 923', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-02-09 00:00:00', 'En cours', 82175.54, 'Restauration', 'Commande 924', 53);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-06-25 00:00:00', 'Livré', 108620.84, 'Restauration', 'Commande 925', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10010, '2024-11-22 00:00:00', 'En cours', 156064.32, 'Restauration', 'Commande 926', 12);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-05-12 00:00:00', 'En cours', 149634.73, 'Restauration', 'Commande 927', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-12-19 00:00:00', 'En cours', 69268.66, 'Restauration', 'Commande 928', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-07-06 00:00:00', 'En cours', 186947.04, 'Restauration', 'Commande 929', 1);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10011, '2024-11-11 00:00:00', 'Annulé', 128475.58, 'Restauration', 'Commande 930', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-12-25 00:00:00', 'En cours', 76352.8, 'Restauration', 'Commande 931', 19);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-07-04 00:00:00', 'Annulé', 119519.96, 'Restauration', 'Commande 932', 73);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10024, '2024-01-05 00:00:00', 'Livré', 160433.97, 'Restauration', 'Commande 933', 77);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-03-08 00:00:00', 'En cours', 35424.6, 'Restauration', 'Commande 934', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10008, '2024-06-04 00:00:00', 'En cours', 99607.04, 'Restauration', 'Commande 935', 78);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-09-13 00:00:00', 'Annulé', 120767.27, 'Restauration', 'Commande 936', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-06-10 00:00:00', 'Livré', 192706.53, 'Restauration', 'Commande 937', 39);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-07-09 00:00:00', 'Annulé', 184340.11, 'Restauration', 'Commande 938', 25);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-01-31 00:00:00', 'Annulé', 116339.63, 'Restauration', 'Commande 939', 47);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-12-20 00:00:00', 'Livré', 180564.13, 'Restauration', 'Commande 940', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-05-09 00:00:00', 'En cours', 77061.95, 'Restauration', 'Commande 941', 98);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-08-30 00:00:00', 'Annulé', 41102.41, 'Restauration', 'Commande 942', 16);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-05-20 00:00:00', 'En cours', 173552.49, 'Restauration', 'Commande 943', 8);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-19 00:00:00', 'Annulé', 160245.5, 'Restauration', 'Commande 944', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10017, '2024-02-29 00:00:00', 'Annulé', 23906.21, 'Restauration', 'Commande 945', 6);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-07-23 00:00:00', 'Annulé', 123006.9, 'Restauration', 'Commande 946', 99);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10013, '2024-08-10 00:00:00', 'Livré', 102761.83, 'Restauration', 'Commande 947', 69);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-08-29 00:00:00', 'En cours', 11910.87, 'Restauration', 'Commande 948', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-06-21 00:00:00', 'Livré', 120502.46, 'Restauration', 'Commande 949', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-09-28 00:00:00', 'Livré', 162698.05, 'Restauration', 'Commande 950', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-06-01 00:00:00', 'En cours', 93675.11, 'Restauration', 'Commande 951', 94);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-01-16 00:00:00', 'Annulé', 106566.14, 'Restauration', 'Commande 952', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-06-07 00:00:00', 'Livré', 112266.48, 'Restauration', 'Commande 953', 72);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-08-16 00:00:00', 'Livré', 164357.42, 'Restauration', 'Commande 954', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-12-29 00:00:00', 'Annulé', 189471.57, 'Restauration', 'Commande 955', 4);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10029, '2024-11-07 00:00:00', 'Annulé', 16640.96, 'Restauration', 'Commande 956', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-05-16 00:00:00', 'En cours', 101033.0, 'Restauration', 'Commande 957', 65);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-01-03 00:00:00', 'Annulé', 101772.0, 'Restauration', 'Commande 958', 5);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10036, '2024-08-06 00:00:00', 'Livré', 33322.19, 'Restauration', 'Commande 959', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10038, '2024-03-04 00:00:00', 'Annulé', 11655.74, 'Restauration', 'Commande 960', 9);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-05-17 00:00:00', 'Annulé', 21935.97, 'Restauration', 'Commande 961', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-05-14 00:00:00', 'Livré', 128110.34, 'Restauration', 'Commande 962', 89);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10034, '2024-03-15 00:00:00', 'En cours', 56937.03, 'Restauration', 'Commande 963', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10037, '2024-10-27 00:00:00', 'En cours', 190846.02, 'Restauration', 'Commande 964', 34);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10003, '2024-12-22 00:00:00', 'Livré', 59640.28, 'Restauration', 'Commande 965', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-03-20 00:00:00', 'En cours', 29656.23, 'Restauration', 'Commande 966', 18);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-11-02 00:00:00', 'Annulé', 53212.92, 'Restauration', 'Commande 967', 97);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10019, '2024-05-13 00:00:00', 'Livré', 177013.62, 'Restauration', 'Commande 968', 60);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10027, '2024-10-16 00:00:00', 'Annulé', 35268.88, 'Restauration', 'Commande 969', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10015, '2024-02-01 00:00:00', 'Livré', 180267.98, 'Restauration', 'Commande 970', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-04-24 00:00:00', 'Annulé', 156186.09, 'Restauration', 'Commande 971', 7);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-02-02 00:00:00', 'Livré', 46599.64, 'Restauration', 'Commande 972', 15);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10000, '2024-08-25 00:00:00', 'Annulé', 175231.57, 'Restauration', 'Commande 973', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-09-03 00:00:00', 'En cours', 35631.58, 'Restauration', 'Commande 974', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-11-05 00:00:00', 'En cours', 130570.84, 'Restauration', 'Commande 975', 74);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10031, '2024-02-16 00:00:00', 'Annulé', 52943.33, 'Restauration', 'Commande 976', 28);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-07-08 00:00:00', 'Annulé', 157062.41, 'Restauration', 'Commande 977', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-12-02 00:00:00', 'Livré', 122114.34, 'Restauration', 'Commande 978', 20);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-04-01 00:00:00', 'Livré', 193036.46, 'Restauration', 'Commande 979', 95);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-06-11 00:00:00', 'Annulé', 78720.95, 'Restauration', 'Commande 980', 58);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10020, '2024-11-11 00:00:00', 'Livré', 26070.97, 'Restauration', 'Commande 981', 86);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-10-15 00:00:00', 'Annulé', 195847.94, 'Restauration', 'Commande 982', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10016, '2024-10-04 00:00:00', 'En cours', 54513.47, 'Restauration', 'Commande 983', 51);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-06-08 00:00:00', 'Livré', 151326.55, 'Restauration', 'Commande 984', 32);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-12-04 00:00:00', 'En cours', 76525.33, 'Restauration', 'Commande 985', 41);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-10-15 00:00:00', 'En cours', 175645.91, 'Restauration', 'Commande 986', 21);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10039, '2024-09-02 00:00:00', 'Annulé', 136591.2, 'Restauration', 'Commande 987', 42);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10028, '2024-12-14 00:00:00', 'Livré', 105136.3, 'Restauration', 'Commande 988', 70);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10035, '2024-09-10 00:00:00', 'Annulé', 120701.38, 'Restauration', 'Commande 989', 91);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10006, '2024-10-27 00:00:00', 'Annulé', 178145.24, 'Restauration', 'Commande 990', 85);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10026, '2024-01-29 00:00:00', 'Annulé', 51456.11, 'Restauration', 'Commande 991', 96);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10009, '2024-04-11 00:00:00', 'Annulé', 12748.8, 'Restauration', 'Commande 992', 71);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10002, '2024-08-30 00:00:00', 'Livré', 71714.36, 'Restauration', 'Commande 993', 30);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10023, '2024-06-24 00:00:00', 'Livré', 187978.45, 'Restauration', 'Commande 994', 0);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10021, '2024-09-21 00:00:00', 'Annulé', 139877.17, 'Restauration', 'Commande 995', 35);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10030, '2024-09-03 00:00:00', 'Livré', 180179.45, 'Restauration', 'Commande 996', 56);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10012, '2024-05-23 00:00:00', 'Annulé', 137980.08, 'Restauration', 'Commande 997', 31);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10018, '2024-02-01 00:00:00', 'Livré', 110029.68, 'Restauration', 'Commande 998', 36);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10014, '2024-10-29 00:00:00', 'En cours', 156925.23, 'Restauration', 'Commande 999', 55);
INSERT INTO commande (id_etudiant, date_commande, statut, total, type_service, commentaire, points_utilises) VALUES (10007, '2024-12-07 00:00:00', 'Livré', 182477.3, 'Restauration', 'Commande 1000', 14);

INSERT INTO menu (nom, description, prix, stock) VALUES
('Ndolé', 'Plat à base de feuilles de ndolé, viande et crevettes, assaisonné d\'épices.', 8.50, 50),
('Poulet DG', 'Poulet braisé accompagné de bananes plantains, légumes et sauce tomate.', 10.00, 30),
('Eru', 'Plats à base de feuilles d\'eru, viande, crevettes et épices, servi avec du foufou.', 9.00, 20),
('Akara', 'Boulettes de haricots noires frites, souvent servies en apéritif.', 3.50, 100),
('Soya', 'Brochettes de viande marinées, grillées et servies avec une sauce piquante.', 5.00, 40),
('Fufu', 'Pâte à base de manioc, souvent servie avec des soupes ou des sauces.', 2.00, 60),
('Bongo Chobi', 'Plat de poisson braisé avec une sauce à base de tomates et d\'épices.', 7.50, 25),
('Koki', 'Pâté à base de haricots, cuit à la vapeur avec des épices et de l\'huile de palme.', 6.00, 15);


INSERT INTO menu (nom, description, prix, stock, image_url, visibilite) VALUES
('Burger Classique', 'Un délicieux burger avec un steak juteux, fromage, laitue et tomate.', 8.50, 20, 'http://example.com/images/burger_classique.jpg', TRUE),
('Pizza Margherita', 'Pizza classique avec sauce tomate, mozzarella et basilic frais.', 10.00, 15, 'http://example.com/images/pizza_margherita.jpg', TRUE),
('Salade César', 'Salade avec poulet grillé, croûtons, parmesan et sauce César.', 9.00, 30, 'http://example.com/images/salade_cesar.jpg', TRUE),
('Pâtes Carbonara', 'Pâtes crémeuses avec lardons, œufs et parmesan.', 11.50, 10, 'http://example.com/images/pates_carbonara.jpg', TRUE),
('Tacos au Poulet', 'Tacos garnis de poulet mariné, avocat et salsa.', 7.00, 25, 'http://example.com/images/tacos_poulet.jpg', TRUE),
('Sushi Variés', 'Assortiment de sushis frais avec poisson et légumes.', 12.00, 5, 'http://example.com/images/sushi_varies.jpg', TRUE),
('Quiche Lorraine', 'Quiche avec lardons et crème, servie chaude.', 8.00, 18, 'http://example.com/images/quiche_lorraine.jpg', TRUE),
('Tiramisu', 'Dessert italien classique à base de café et de mascarpone.', 5.50, 40, 'http://example.com/images/tiramisu.jpg', TRUE),
('Café Latte', 'Café au lait mousseux, parfait pour le matin.', 3.00, 50, 'http://example.com/images/cafe_latte.jpg', TRUE),
('Brownie Chocolat', 'Gâteau au chocolat fondant, servi avec une boule de glace.', 4.50, 30, 'http://example.com/images/brownie_chocolat.jpg', TRUE);
