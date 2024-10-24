<?php

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE"); // Ajoutez DELETE ici

$host = 'localhost';
$db = 'zeducspace'; // Remplacez par votre nom de base de données
$user = 'root'; // Remplacez par votre utilisateur
$pass = ''; // Remplacez par votre mot de passe

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => 'Erreur de connexion : ' . $e->getMessage()]);
    exit;
}

$requestMethod = $_SERVER['REQUEST_METHOD'];

switch ($requestMethod) {
    case 'GET':
        $stmt = $pdo->query("SELECT * FROM menuProduit");
        $produits = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode(['success' => true, 'menuProduit' => $produits]);
        break;

    case 'POST':
        $title = $_POST['title'] ?? '';
        $description = $_POST['description'] ?? '';
        $imgSrc = $_FILES['imgSrc']['name'] ?? '';

        if ($imgSrc) {
            move_uploaded_file($_FILES['imgSrc']['tmp_name'], "uploads/" . $imgSrc);
        }

        $stmt = $pdo->prepare("INSERT INTO menuProduit (title, description, imgSrc) VALUES (?, ?, ?)");
        if ($stmt->execute([$title, $description, $imgSrc])) {
            echo json_encode(['success' => true, 'produit' => ['id' => $pdo->lastInsertId(), 'title' => $title, 'description' => $description, 'imgSrc' => $imgSrc]]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Erreur lors de l\'ajout du produit.']);
        }
        break;

    case 'PUT':
        parse_str(file_get_contents("php://input"), $putVars);
        $id = $_GET['id'] ?? null;
        $title = $putVars['title'] ?? '';
        $description = $putVars['description'] ?? '';

        if ($id) {
            $stmt = $pdo->prepare("UPDATE menuProduit SET title = ?, description = ? WHERE id = ?");
            if ($stmt->execute([$title, $description, $id])) {
                echo json_encode(['success' => true]);
            } else {
                echo json_encode(['success' => false, 'message' => 'Erreur lors de la modification du produit.']);
            }
        } else {
            echo json_encode(['success' => false, 'message' => 'ID manquant.']);
        }
        break;

    case 'DELETE':
        $id = $_GET['id'] ?? null;
        if ($id) {
            $stmt = $pdo->prepare("DELETE FROM menuProduit WHERE id = ?");
            if ($stmt->execute([$id])) {
                echo json_encode(['success' => true]);
            } else {
                echo json_encode(['success' => false, 'message' => 'Erreur lors de la suppression du produit.']);
            }
        } else {
            echo json_encode(['success' => false, 'message' => 'ID manquant.']);
        }
        break;

    default:
        echo json_encode(['success' => false, 'message' => 'Méthode non autorisée.']);
        break;
}
?>
