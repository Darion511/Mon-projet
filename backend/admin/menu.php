<?php
// menu.php
header('Content-Type: application/json');
include '../config/database.php';

// Ajouter un menu
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $data = json_decode(file_get_contents("php://input"));
    
    $stmt = $pdo->prepare("INSERT INTO menu (title, description, imgSrc) VALUES (:title, :description, :imgSrc)");
    $stmt->bindParam(':title', $data->title);
    $stmt->bindParam(':description', $data->description);
    $stmt->bindParam(':imgSrc', $data->imgSrc);
    
    if ($stmt->execute()) {
        echo json_encode(['message' => 'Menu ajouté avec succès.']);
    } else {
        echo json_encode(['message' => 'Erreur lors de l\'ajout du menu.']);
    }
}

// Modifier un menu
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    $data = json_decode(file_get_contents("php://input"));
    
    $stmt = $pdo->prepare("UPDATE menuProduit SET title = :title, description = :description, imgSrc = :imgSrc WHERE id = :id");
    $stmt->bindParam(':title', $data->title);
    $stmt->bindParam(':description', $data->description);
    $stmt->bindParam(':imgSrc', $data->imgSrc);
    $stmt->bindParam(':id', $data->id);
    
    if ($stmt->execute()) {
        echo json_encode(['message' => 'Menu modifié avec succès.']);
    } else {
        echo json_encode(['message' => 'Erreur lors de la modification du menu.']);
    }
}

// Supprimer un menu
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    $data = json_decode(file_get_contents("php://input"));
    
    $stmt = $pdo->prepare("DELETE FROM menuProduit WHERE id = :id");
    $stmt->bindParam(':id', $data->id);
    
    if ($stmt->execute()) {
        echo json_encode(['message' => 'Menu supprimé avec succès.']);
    } else {
        echo json_encode(['message' => 'Erreur lors de la suppression du menu.']);
    }
}

// Récupérer tous les menus
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $stmt = $pdo->query("SELECT * FROM menuProduit");
    $menus = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    echo json_encode($menus);
}
?>
