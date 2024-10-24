<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: POST");



// Connexion directe à la base de données
$host = 'localhost'; // Adresse du serveur
$dbname = 'zeducspace'; 
$username = 'root'; 
$password = '';

try {
    // Connexion à la base de données avec PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Activer les exceptions PDO
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage()); // Afficher une erreur si la connexion échoue
}

// Préparer et exécuter la requête pour récupérer tous les employés
$query = "SELECT * FROM Employe"; // Requête SQL pour sélectionner tous les employés
$stmt = $pdo->prepare($query); // Préparer la requête
$stmt->execute(); // Exécuter la requête

// Récupérer tous les employés sous forme de tableau associatif
$employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Convertir le tableau en format JSON et l'envoyer au frontend
echo json_encode($employees);
?>
