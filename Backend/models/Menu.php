<?php
require_once '../config/Database.php';

class Menu {
    private $conn;

    public function __construct() {
        $database = new Database();
        $this->conn = $database->conn; // Obtenir la connexion de la classe Database
    }

    // Méthode pour récupérer tous les menus
    public function getAll() {
        $stmt = $this->conn->prepare("SELECT * FROM menu");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC); // Renvoie toutes les lignes sous forme de tableau associatif
    }
}
?>
