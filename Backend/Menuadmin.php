<?php
session_start();
require_once 'database.php'; 
// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Vérifier la méthode de la requête
$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        fetchProduits($conn);
        break;
    case 'POST':
        addProduit($conn);
        break;
    case 'PUT':
        updateProduit($conn);
        break;
    case 'DELETE':
        deleteProduit($conn);
        break;
    default:
        http_response_code(405);
        echo json_encode(['success' => false, 'message' => 'Method Not Allowed']);
        break;
}

// Fonction pour récupérer tous les produits
function fetchProduits($conn) {
    $sql = "SELECT * FROM produits";
    $result = $conn->query($sql);

    $produits = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $produits[] = $row;
        }
    }

    echo json_encode(['success' => true, 'produits' => $produits]);
}

// Fonction pour ajouter un produit
function addProduit($conn) {
    if (isset($_POST['title'], $_POST['description'], $_FILES['imgSrc'])) {
        $title = $conn->real_escape_string($_POST['title']);
        $description = $conn->real_escape_string($_POST['description']);
        $imgSrc = $_FILES['imgSrc']['name'];

        // Déplacer l'image vers le dossier approprié
        move_uploaded_file($_FILES['imgSrc']['tmp_name'], "uploads/" . $imgSrc);

        $sql = "INSERT INTO produits (title, description, imgSrc) VALUES ('$title', '$description', '$imgSrc')";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(['success' => true, 'produit' => ['id' => $conn->insert_id, 'title' => $title, 'description' => $description, 'imgSrc' => $imgSrc]]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Erreur lors de l\'ajout du produit: ' . $conn->error]);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Données manquantes']);
    }
}

// Fonction pour mettre à jour un produit
function updateProduit($conn) {
    parse_str(file_get_contents("php://input"), $put_vars);
    $id = intval($_GET['id']);
    
    if (isset($put_vars['title'], $put_vars['description'])) {
        $title = $conn->real_escape_string($put_vars['title']);
        $description = $conn->real_escape_string($put_vars['description']);

        $sql = "UPDATE produits SET title='$title', description='$description' WHERE id=$id";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Erreur lors de la mise à jour du produit: ' . $conn->error]);
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Données manquantes']);
    }
}

// Fonction pour supprimer un produit
function deleteProduit($conn) {
    $id = intval($_GET['id']);
    $sql = "DELETE FROM produits WHERE id=$id";
    
    if ($conn->query($sql) === TRUE) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Erreur lors de la suppression du produit: ' . $conn->error]);
    }
}

$conn->close(); // Fermer la connexion à la base de données
?>
