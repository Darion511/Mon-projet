<?php
session_start(); // Démarre la session
header('Content-Type: application/json');
// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

include('database.php');

// Vérification de la requête POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupérer les données envoyées
    $data = json_decode(file_get_contents('php://input'), true);
    
    $email = $data['email'] ?? '';
    $password = $data['password'] ?? '';

    // Vérifier si les champs sont vides
    if (empty($email) || empty($password)) {
        echo json_encode(['success' => false, 'message' => 'Veuillez remplir tous les champs.']);
        exit;
    }

    // Vérifier si l'email est valide
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode(['success' => false, 'message' => 'Format d\'email invalide.']);
        exit;
    }

    // Vérifier si l'utilisateur existe dans la base de données
    $stmt = $db->prepare('SELECT * FROM admins WHERE email = ?');
    $stmt->execute([$email]);
    $user = $stmt->fetch();

    if (!$user) {
        echo json_encode(['success' => false, 'message' => 'Utilisateur non trouvé.']);
        exit;
    }

    // Vérifier si le mot de passe correspond
    if ($user['password'] !== $password) {  // Si vous hachez le mot de passe, utilisez password_verify ici
        echo json_encode(['success' => false, 'message' => 'Mot de passe incorrect.']);
        exit;
    }

    // Si tout est correct
    echo json_encode(['success' => true, 'message' => 'Connexion réussie']);
} else {
    echo json_encode(['success' => false, 'message' => 'Requête invalide']);
}
?>