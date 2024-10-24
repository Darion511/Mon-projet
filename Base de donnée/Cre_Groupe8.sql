CREATE TABLE Etudiant (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    localisation VARCHAR(100),
    téléphone VARCHAR(15),
    points_fidelite INT DEFAULT 0,
    code_parrainage VARCHAR(10) UNIQUE,
    parrain INT,
    FOREIGN KEY (parrain) REFERENCES Etudiant(id)
);


CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    image_url VARCHAR(255),  -- Colonne pour le lien de l'image
    visibilite BOOLEAN NOT NULL DEFAULT TRUE  -- Nouvelle colonne ajoutée
);

ALTER TABLE menu
ADD COLUMN visibilite BOOLEAN NOT NULL DEFAULT TRUE;

CREATE TABLE commande (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant INT NOT NULL,
    date_commande TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statut VARCHAR(50),
    total DECIMAL(10, 2) NOT NULL,
    type_service VARCHAR(50),
    commentaire TEXT,
    points_utilises INT DEFAULT 0,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id)
);



CREATE TABLE detail_commande (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_commande INT NOT NULL,
    id_menu INT NOT NULL,
    quantité INT NOT NULL,
    sous_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_menu) REFERENCES menu(id)
);

CREATE TABLE fidelite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant INT NOT NULL,
    points_ajoutes INT,
    points_utilises INT,
    date_transaction TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id)
);

CREATE TABLE reclamation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant INT NOT NULL,
    id_commande INT NOT NULL,
    description TEXT,
    statut VARCHAR(20) DEFAULT 'En attente',
    date_reclamation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id),
    FOREIGN KEY (id_commande) REFERENCES commande(id)
);


CREATE TABLE paiement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_commande INT NOT NULL,
    montant DECIMAL(10, 2) NOT NULL,
    methode_paiement VARCHAR(50) NOT NULL,
    date_paiement TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statut VARCHAR(20) DEFAULT 'Réussi',
    FOREIGN KEY (id_commande) REFERENCES commande(id)
);

CREATE TABLE parrainage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_parrain INT NOT NULL,
    id_filleul INT NOT NULL,
    date_parrainage TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_parrain) REFERENCES Etudiant(id),
    FOREIGN KEY (id_filleul) REFERENCES Etudiant(id)
);

CREATE TABLE evenement (
    id_evenement INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    description TEXT,
    date_evenement DATE,
    recompense VARCHAR(255) -- Type de récompense ou points à gagner
);


CREATE TABLE participation_evenement (
    id_participation INT PRIMARY KEY AUTO_INCREMENT,
    id_etudiant INT,
    id_evenement INT,
    date_participation DATE,
    points_gagnes INT,
    FOREIGN KEY (id_etudiant) REFERENCES etudiant(id),
    FOREIGN KEY (id_evenement) REFERENCES evenement(id_evenement)
);


select all* from Etudiant;
DESCRIBE Etudiant;



CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('Employer', 'Administrateur', 'Gérant') NOT NULL
);


select * from admins;

CREATE TABLE menuProduit (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identifiant unique pour chaque produit
    title VARCHAR(255) NOT NULL,       -- Titre du produit
    description TEXT NOT NULL,          -- Description du produit
    imgSrc VARCHAR(255),                -- Lien vers l'image du produit
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date de création de l'entrée
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Date de mise à jour de l'entrée
);

select * from menuProduit;


insert into menuProduit (id, title, description, imgSrc, created_at, updated_at) values ()




CREATE TABLE Employe (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- Identifiant unique pour chaque employé
    nom_employe VARCHAR(100) NOT NULL,             -- Nom de l'employé
    prenom_employe VARCHAR(100) NOT NULL,          -- Prénom de l'employé
    photo VARCHAR(255) DEFAULT NULL         -- Chemin de la photo de l'employé
);

INSERT INTO menu (nom, description, prix, stock, image_url, visibilite)
VALUES ('Pizza', 'Une pizza délicieuse', 12.99, 10, 'images/pizza.jpg', TRUE);

UPDATE menu
SET prix = prix / 655.957
WHERE id IS NOT NULL;

