<?php
session_start();
header('Content-Type: application/json');
// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Informations de connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "zeducspace";

// Connexion à la base de données
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérifiez la connexion
if ($conn->connect_error) {
    die(json_encode(["success" => false, "message" => "Échec de la connexion : " . $conn->connect_error]));
}

// Récupérer les promotions
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $sql = "SELECT * FROM promotions";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $promotions = [];
        while ($row = $result->fetch_assoc()) {
            $promotions[] = $row;
        }
        echo json_encode(["success" => true, "promotions" => $promotions]);
    } else {
        echo json_encode(["success" => false, "message" => "Aucune promotion trouvée."]);
    }
}

// Ajouter une promotion
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!isset($_SESSION['user_id'])) {
        echo json_encode(["success" => false, "message" => "Utilisateur non connecté."]);
        exit;
    }

    $title = $_POST['title'] ?? '';
    $description = $_POST['description'] ?? '';
    $date = $_POST['date'] ?? '';
    $imgSrc = $_FILES['image']['name']; // Pour récupérer le nom de l'image

    // Chemin de téléchargement de l'image
    $targetDir = "uploads/";
    $targetFilePath = $targetDir . basename($_FILES["image"]["name"]);
    
    // Déplacez l'image dans le dossier de votre serveur
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $targetFilePath)) {
        $sql = "INSERT INTO promotions (title, description, date, imgSrc) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssss", $title, $description, $date, $imgSrc);

        if ($stmt->execute()) {
            echo json_encode(["success" => true, "message" => "Promotion ajoutée avec succès."]);
        } else {
            echo json_encode(["success" => false, "message" => "Erreur lors de l'ajout de la promotion."]);
        }

        $stmt->close();
    } else {
        echo json_encode(["success" => false, "message" => "Erreur lors du téléchargement de l'image."]);
    }
}

$conn->close();
?>
