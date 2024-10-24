<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");
header("Access-Control-Allow-Methods: POST");

$host = 'localhost';
$dbname = 'zeducspace';
$username = 'root';
$password = '';

// Connexion à la base de données
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Récupérer l'ID de l'employé
    $id = $_POST['id'] ?? null;

    // Vérifier que l'ID est valide
    if (empty($id)) {
        echo json_encode(['success' => false, 'message' => 'ID d\'employé manquant.']);
        exit();
    }

    // Préparez et exécutez la requête de suppression
    $stmt = $pdo->prepare("DELETE FROM Employe WHERE id = :id");
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();

    echo json_encode(['success' => true, 'message' => 'Employé supprimé.']);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erreur de connexion : ' . $e->getMessage()]);
}
?>
