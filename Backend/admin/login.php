<?php
session_start(); // Démarrer la session

// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Configurer la connexion à la base de données
$host = 'localhost';
$db = 'zeducspace'; 
$user = 'root';
$password = ''; 

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => "Erreur de connexion : " . $e->getMessage()]);
    exit();
}

// Vérifier la méthode de la requête
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupérer les données envoyées par le frontend
    $email = $_POST['email'] ?? '';
    $password = $_POST['password'] ?? '';
    $role = $_POST['role'] ?? ''; // Récupérer le rôle (gérant, employé, administrateur)

    // Requête pour vérifier les identifiants
    $stmt = $pdo->prepare("SELECT * FROM admins WHERE email = :email AND role = :role");
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':role', $role);
    $stmt->execute();

    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    // Vérifier si l'utilisateur existe et que le mot de passe est correct
    if ($user && $password === $user['password']) { // Comparaison directe sans hachage
        // Stocker l'ID de l'utilisateur dans la session
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['role'] = $user['role'];
        
        // Réponse réussie
        echo json_encode(['success' => true, 'message' => 'Connexion réussie.']);
    } else {
        // Réponse d'erreur
        echo json_encode(['success' => false, 'message' => 'Identifiants incorrects.']);
    }
} else {
    // Méthode de requête non autorisée
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Méthode non autorisée.']);
}
?>
