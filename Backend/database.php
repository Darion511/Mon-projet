<?php

// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');


// Informations de connexion à la base de données
$host = 'localhost';
$dbname = 'zeducspace';
$username = 'root';
$password = '';

try {
    // Créer une instance de PDO
    $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    // Configurer PDO pour afficher les erreurs
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    // Gérer les erreurs de connexion
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
    exit();
}
?>
