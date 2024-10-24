<?php
class StatCommande {
    private $conn;

    // Connexion à la base de données dans le constructeur
    public function __construct() {
        $host = 'localhost';
        $db_name = 'zeducspace';
        $username = 'root';  // Votre nom d'utilisateur MySQL
        $password = '';      // Votre mot de passe MySQL

        try {
            $this->conn = new PDO("mysql:host=$host;dbname=$db_name", $username, $password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->conn->exec("set names utf8");
        } catch (PDOException $exception) {
            die("Erreur de connexion : " . $exception->getMessage());
        }
    }

    // Revenu total du mois actuel
    public function getRevenuMois() {
        $query = "SELECT SUM(total) as revenu_mois FROM commande WHERE MONTH(date_commande) = MONTH(CURRENT_DATE()) AND YEAR(date_commande) = YEAR(CURRENT_DATE())";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['revenu_mois'] ?? 0;
    }

    // Nombre total de commandes du mois
    public function getNombreCommandesMois() {
        $query = "SELECT COUNT(*) as nombre_commandes FROM commande WHERE MONTH(date_commande) = MONTH(CURRENT_DATE()) AND YEAR(date_commande) = YEAR(CURRENT_DATE())";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['nombre_commandes'] ?? 0;
    }

  
    public function getRevenuJour() {
        $query = "SELECT SUM(total) as revenu_jour FROM commande WHERE DATE(date_commande) = CURRENT_DATE()";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['revenu_jour'] ?? 0;
    }


    public function getStatsParMois() {
        $sql = "SELECT MONTH(date_commande) as mois, COUNT(id) as nombre_commandes, SUM(total) as revenus 
                FROM commande 
                WHERE YEAR(date_commande) = YEAR(CURRENT_DATE())
                GROUP BY mois 
                ORDER BY mois"; 
    
        $result = $this->conn->query($sql);
        $stats = [];
 
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $stats[] = $row;
        }
    
        // Ajouter les mois manquants (0 commandes pour certains mois)
        for ($m = 1; $m <= 12; $m++) {
            if (!array_filter($stats, fn($stat) => $stat['mois'] == $m)) {
                $stats[] = ['mois' => $m, 'nombre_commandes' => 0, 'revenus' => 0];
            }
        }
    
        // Trier à nouveau après l'ajout de mois manquants
        usort($stats, fn($a, $b) => $a['mois'] - $b['mois']);
    
        return $stats;
    }
}
?>
