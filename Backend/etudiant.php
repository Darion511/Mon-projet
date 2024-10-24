<?php
session_start();
require 'database.php';
// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Vérifiez si l'utilisateur est connecté et a le bon rôle
if (!isset($_SESSION['id']) || $_SESSION['role'] !== 'Administrateur') {
    http_response_code(403);
    echo json_encode(['success' => false, 'message' => 'Accès refusé.']);
    exit;
}

// Récupérer tous les étudiants
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $query = "SELECT * FROM etudiant";
    $result = $conn->query($query);

    if ($result) {
        $clients = $result->fetch_all(MYSQLI_ASSOC);
        echo json_encode(['success' => true, 'data' => $clients]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Erreur lors de la récupération des clients.']);
    }
}

// Modifier un étudiant
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['id'])) {
    $id = intval($_POST['id']);
    $nom = $_POST['nom_etudiant'];
    $prenom = $_POST['prenom_etudiant'];
    $photo = $_FILES['photo']['name'];

    // Si une nouvelle photo est téléchargée, on va le déplacez vers un dossier approprié
    if (!empty($photo)) {
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($photo);
        move_uploaded_file($_FILES["photo"]["tmp_name"], $target_file);
    }

    $query = "UPDATE etudiant SET nom_etudiant = ?, prenom_etudiant = ?, photo = ? WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('sssi', $nom, $prenom, $target_file, $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Étudiant mis à jour avec succès.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Erreur lors de la mise à jour de l\'étudiant.']);
    }
}

// Supprimer un étudiant
if ($_SERVER['REQUEST_METHOD'] === 'DELETE' && isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $query = "DELETE FROM etudiant WHERE id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('i', $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Étudiant supprimé avec succès.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Erreur lors de la suppression de l\'étudiant.']);
    }
}

$conn->close();
?>
