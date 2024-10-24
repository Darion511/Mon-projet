<?php
require_once '../config/Database.php';

class Etudiant {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->conn; // Obtenir la connexion de la classe Database
    }

    // Méthode pour récupérer un étudiant par email
    public function getByEmail($email) {
        $stmt = $this->conn->prepare("SELECT * FROM Etudiant WHERE email = :email LIMIT 1");
        $stmt->bindParam(':email', $email);
        $stmt->execute();
        
        // Vérifiez s'il y a des résultats
        if ($stmt->rowCount() > 0) {
            return $stmt->fetch(PDO::FETCH_ASSOC); // Renvoie une ligne sous forme de tableau associatif
        } else {
            return null; // Aucun étudiant trouvé
        }
    }
    

    // Autres méthodes concernant l'étudiant peuvent être ajoutées ici
}
