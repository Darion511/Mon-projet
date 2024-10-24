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

    // Récupérer les données
    $id = $_POST['id'] ?? null;
    $nom = $_POST['nom_employe'] ?? null;
    $prenom = $_POST['prenom_employe'] ?? null;
    $photo = $_FILES['photo'] ?? null; // Si vous utilisez une photo

    // Vérifiez que l'ID est valide
    if (empty($id)) {
        echo json_encode(['success' => false, 'message' => 'ID d\'employé manquant.']);
        exit();
    }

    // Optionnel : Si une nouvelle photo est uploadée, gérez-la ici
    if ($photo && $photo['error'] == UPLOAD_ERR_OK) {
        // Code pour gérer le téléchargement de la photo
        // Vous devrez déplacer le fichier uploadé et stocker son chemin dans la base de données
    }

    // Préparez et exécutez la requête de mise à jour
    $stmt = $pdo->prepare("UPDATE Employe SET nom_employe = :nom, prenom_employe = :prenom WHERE id = :id");
    $stmt->bindParam(':nom', $nom);
    $stmt->bindParam(':prenom', $prenom);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();

    echo json_encode(['success' => true, 'message' => 'Employé mis à jour.']);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erreur de connexion : ' . $e->getMessage()]);
}
?>
