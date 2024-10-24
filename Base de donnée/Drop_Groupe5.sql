-- Suppression des tables dans l'ordre pour éviter les erreurs de clés étrangères
-- repect obliger de cet ordre.

DROP TABLE IF EXISTS parrainage;
DROP TABLE IF EXISTS reclamation;
DROP TABLE IF EXISTS paiement;
DROP TABLE IF EXISTS fidelite;
DROP TABLE IF EXISTS detail_commande;
DROP TABLE IF EXISTS commande;
DROP TABLE IF EXISTS menu cascade ;
DROP TABLE IF EXISTS etudiant;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS admins;

-- Promotion n'est pas encore toucher ici ; car l'étudiant ne doit pas pouvoir modifier des informations de cet table
