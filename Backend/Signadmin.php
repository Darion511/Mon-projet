<?php
// je definit dans les headers pour répondre avec les en-têtes CORS afin d'autoriser les données à transiter entre les serveurs
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type");
    http_response_code(200);
    exit();
}

// ici j'ajoute les en-têtes CORS pour toutes les réponses ; de cette façon j'autorise les données à transiter du php au JSON
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json; charset=UTF-8");

// Connexion à la base de données
$dsn = 'mysql:host=localhost;dbname=zeducspace';
$username = 'root';
$password = '';

try {
    $db = new PDO($dsn, $username, $password);
    error_log("Connexion à la base de données réussie");
} catch (PDOException $e) {
    error_log("Erreur de connexion à la base de données: " . $e->getMessage());
    echo json_encode(['success' => false, 'message' => 'Erreur de connexion à la base de données']);
    exit();
}

// Récupérer les données JSON envoyées par React
$data = json_decode(file_get_contents('php://input'), true);

if (!$data) {
    error_log("Aucune donnée reçue");
    echo json_encode(['success' => false, 'message' => 'Aucune donnée reçue']);
    exit();
}

$email = $data['email'] ?? '';
$password = $data['password'] ?? ''; // On récupère le mot de passe sans vérification de hachage

// Loguer les informations reçues
error_log("Email: " . $email);
error_log("Mot de passe: " . $password);

if (!empty($email) && !empty($password)) { // Si l'email et le mot de passe ne sont pas vides, je récupère les valeurs et les passe en paramètre dans la requête SQL
    $stmt = $db->prepare("SELECT * FROM admins WHERE email = :email"); // Préparation d'une requête SQL pour vérifier si l'utilisateur existe dans la base de données.
    $stmt->bindParam(':email', $email);   // J'associe la valeur de l'email fourni par l'utilisateur à la variable :email dans la requête.
    $stmt->execute();  // J'exécute la requête SQL pour rechercher un utilisateur avec cet email.

    // Je récupère les résultats de la requête sous forme de tableau associatif.
    $admin = $stmt->fetch(PDO::FETCH_ASSOC);

    // Si un utilisateur avec cet email existe dans la base de données
    if ($admin) {
        error_log("Utilisateur trouvé"); // Je note dans les logs que l'utilisateur a été trouvé.

        // Comparaison du mot de passe fourni par l'utilisateur sans vérification de hachage.
        if ($password === $admin['password']) { // Ici on compare directement les mots de passe
            error_log("Mot de passe correct"); // Je note dans les logs que le mot de passe est correct.

            // Si le mot de passe est correct, je renvoie une réponse JSON indiquant que la connexion est réussie.
            echo json_encode(['success' => true, 'message' => 'Connexion réussie']);
        } else {
            error_log("Mot de passe incorrect"); // Je note dans les logs que le mot de passe est incorrect.

            // Si le mot de passe est incorrect, je renvoie une réponse JSON indiquant une erreur.
            echo json_encode(['success' => false, 'message' => 'Mot de passe incorrect']);
        }
    } else {
        error_log("Aucun utilisateur trouvé avec cet email"); // Je note dans les logs que l'utilisateur n'a pas été trouvé.

        // Si aucun utilisateur n'est trouvé avec cet email, je renvoie une réponse JSON indiquant que l'utilisateur n'existe pas.
        echo json_encode(['success' => false, 'message' => 'Utilisateur non trouvé']);
    }
} else {
    error_log("Champs manquants"); // Je note dans les logs que des champs obligatoires sont manquants.

    // Si les champs email ou mot de passe sont vides, je renvoie une réponse JSON indiquant que tous les champs doivent être remplis.
    echo json_encode(['success' => false, 'message' => 'Veuillez remplir tous les champs']);
}
?>
