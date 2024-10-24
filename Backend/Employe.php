<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: GET"); 

// Connexion directe à la base de données
$host = 'localhost';
$dbname = 'zeducspace';
$username = 'root';
$password = '';

$response = [];

try {
    // Connexion avec PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Requête pour récupérer les employés
    $sql = "SELECT id, nom_employe, prenom_employe, photo FROM Employe";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();

    $employees = $stmt->fetchAll(PDO::FETCH_ASSOC); // Récupérer tous les résultats sous forme de tableau associatif
    $response['success'] = true;
    $response['data'] = $employees; // Stockez les employés dans la clé 'data'
} catch (PDOException $e) {
    $response['success'] = false;
    $response['message'] = "Erreur : " . $e->getMessage(); // Stockez le message d'erreur
}

// Retourner la réponse en JSON
echo json_encode($response);
?>
