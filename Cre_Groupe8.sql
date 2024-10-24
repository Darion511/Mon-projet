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

select * from Etudiant;


CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

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

CREATE TABLE Promotion (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Identifiant unique de chaque promotion
    date DATE NOT NULL,                      -- Date de la promotion
    imgSrc VARCHAR(255),                     -- URL de l'image de la promotion
    title VARCHAR(255) NOT NULL,             -- Titre de la promotion
    description TEXT,                        -- Description détaillée de la promotion
    link VARCHAR(255),                       -- Lien associé à la promotion
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Date de création de la promotion
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- Date de dernière mise à jour
);

select * from promotion;




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
ALTER TABLE Etudiant ADD active TINYINT(1) DEFAULT 1;

DESCRIBE Etudiant;



CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100)  NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('Employer', 'Administrateur', 'Gérant') NOT NULL
);

ALTER TABLE admins ADD COLUMN statut TINYINT(1) DEFAULT 1;
ALTER TABLE admins ADD UNIQUE (email);

select * from admins;

INSERT INTO admins (email, password, role) VALUES ('naren@gmail.com', 'naren2000', 'Administrateur');
INSERT INTO admins (email, password, role) VALUES ('natzu@gmail.com', 'natzu2000', 'Administrateur');
INSERT INTO admins (email, password, role) VALUES ('aloys@gmail.com', 'aloys2000', 'Administrateur');
INSERT INTO admins (email, password, role) VALUES ('etienne@gmail.com', 'etienne2000', 'Administrateur');
INSERT INTO admins (email, password, role) VALUES ('smith@gmail.com', 'smith2000', 'Administrateur');
INSERT INTO admins (email, password, role) VALUES ('nasser@gmail.com', 'nasser2000', 'Administrateur');
INSERT INTO admins (email, password, role) VALUES ('etienne@gmail.com', 'etienne2000', 'Employer');

CREATE TABLE menuProduit (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Identifiant unique pour chaque produit
    title VARCHAR(255) NOT NULL,       -- Titre du produit
    description TEXT NOT NULL,          -- Description du produit
    imgSrc VARCHAR(255),                -- Lien vers l'image du produit
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date de création de l'entrée
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Date de mise à jour de l'entrée
);

select * from menuProduit;
delete from menuProduit;


insert into menuProduit (id, title, description, imgSrc, created_at, updated_at) values ();

select * from admins;