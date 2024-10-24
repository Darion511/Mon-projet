<?php
// employee.php

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
header('Access-Control-Allow-Headers: Content-Type');

// Connexion à la base de données
$mysqli = new mysqli("localhost", "root", "", "zeducspace");

if ($mysqli->connect_error) {
    http_response_code(500);
    echo json_encode(["error" => "Erreur de connexion à la base de données"]);
    exit();
}

// Récupérer la méthode HTTP
$method = $_SERVER['REQUEST_METHOD'];

// Action en fonction de la méthode HTTP
if ($method === 'GET') {
    // Requête SQL pour récupérer les employés
    $query = "SELECT * FROM admins WHERE role = 'Employer'";
    $result = $mysqli->query($query);

    if ($result) {
        $employees = $result->fetch_all(MYSQLI_ASSOC);
        echo json_encode($employees);
    } else {
        http_response_code(500);
        echo json_encode(["error" => "Erreur lors de l'exécution de la requête"]);
    }
} elseif ($method === 'POST') {
    // Requête SQL pour ajouter un employé
    $data = json_decode(file_get_contents('php://input'), true);
    
    if (isset($data['email'], $data['password'])) {
        $email = $data['email'];
        $password = password_hash($data['password'], PASSWORD_DEFAULT);

        $query = "INSERT INTO admins (email, password, role) VALUES (?, ?, 'Employer')";
        $stmt = $mysqli->prepare($query);
        
        if ($stmt) {
            $stmt->bind_param('ss', $email, $password);

            if ($stmt->execute()) {
                http_response_code(201); // 201 : Created
                echo json_encode(["success" => "Employé ajouté avec succès"]);
            } else {
                http_response_code(500);
                echo json_encode(["error" => "Erreur lors de l'ajout de l'employé"]);
            }
            $stmt->close();
        } else {
            http_response_code(500);
            echo json_encode(["error" => "Erreur de préparation de la requête"]);
        }
    } else {
        http_response_code(400);
        echo json_encode(["error" => "Données manquantes pour l'ajout"]);
    }
} elseif ($method === 'DELETE') {
    // Requête SQL pour supprimer un employé
    parse_str(file_get_contents("php://input"), $_DELETE);
    $id = $_DELETE['id'] ?? null;

    if ($id) {
        $query = "DELETE FROM admins WHERE id = ? AND role = 'Employer'";
        $stmt = $mysqli->prepare($query);
        
        if ($stmt) {
            $stmt->bind_param('i', $id);

            if ($stmt->execute()) {
                if ($stmt->affected_rows > 0) {
                    http_response_code(200); // 200 : OK
                    echo json_encode(["success" => "Employé supprimé avec succès"]);
                } else {
                    http_response_code(404); // 404 : Not Found
                    echo json_encode(["error" => "Employé non trouvé"]);
                }
            } else {
                http_response_code(500);
                echo json_encode(["error" => "Erreur lors de la suppression de l'employé"]);
            }
            $stmt->close();
        } else {
            http_response_code(500);
            echo json_encode(["error" => "Erreur de préparation de la requête"]);
        }
    } else {
        http_response_code(400);
        echo json_encode(["error" => "ID manquant pour la suppression"]);
    }
} elseif ($method === 'PUT') {
    // Requête SQL pour modifier un employé
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'] ?? null;
    $email = $data['email'] ?? null;
    $password = isset($data['password']) ? password_hash($data['password'], PASSWORD_DEFAULT) : null;

    if ($id && $email) {
        $query = "UPDATE admins SET email = ?, password = IFNULL(?, password) WHERE id = ? AND role = 'Employer'";
        $stmt = $mysqli->prepare($query);
        
        if ($stmt) {
            $stmt->bind_param('ssi', $email, $password, $id);

            if ($stmt->execute()) {
                http_response_code(200); // 200 : OK
                echo json_encode(["success" => "Employé modifié avec succès"]);
            } else {
                http_response_code(500);
                echo json_encode(["error" => "Erreur lors de la modification de l'employé"]);
            }
            $stmt->close();
        } else {
            http_response_code(500);
            echo json_encode(["error" => "Erreur de préparation de la requête"]);
        }
    } else {
        http_response_code(400);
        echo json_encode(["error" => "ID ou données manquantes pour la modification"]);
    }
} else {
    http_response_code(405); // 405 : Method Not Allowed
    echo json_encode(["error" => "Méthode non autorisée"]);
}

// Fermeture de la connexion
$mysqli->close();
