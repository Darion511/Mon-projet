<?php
// Configuration de la connexion à la base de données
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'zeducspace';

// Créer une nouvelle connexion à la base de données
$mysqli = new mysqli($host, $user, $password, $database);

// Vérifier la connexion
if ($mysqli->connect_error) {
    die("Échec de la connexion : " . $mysqli->connect_error);
}

// Configurer les en-têtes pour le CORS et le type de contenu
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

// Gérer les méthodes HTTP
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'OPTIONS') {
    // Répondre aux requêtes pré-vol pour les requêtes DELETE
    http_response_code(200);
    exit();
}

switch ($method) {
    case 'GET':
        // Requête pour récupérer uniquement les étudiants actifs
        $query = "SELECT id, nom, email, localisation, téléphone, points_fidelite FROM Etudiant WHERE active = 1";
        $result = $mysqli->query($query);
    
        // Vérifier s'il y a des résultats
        if ($result->num_rows > 0) {
            $clients = array();
    
            // Parcourir les résultats et les ajouter à un tableau
            while ($row = $result->fetch_assoc()) {
                $clients[] = $row;
            }
    
            // Envoyer les résultats sous forme de JSON
            echo json_encode($clients);
        } else {
            echo json_encode([]);
        }
        break;
    
        case 'DELETE':
            // Lire les données JSON envoyées avec la requête DELETE
            $input = json_decode(file_get_contents('php://input'), true);
        
            if (isset($input['id'])) {
                $id = $input['id'];
        
                // Désactiver l'étudiant au lieu de le supprimer
                $updateQuery = "UPDATE Etudiant SET active = 0 WHERE id = ?";
                $stmt = $mysqli->prepare($updateQuery);
                $stmt->bind_param('i', $id);
        
                if ($stmt->execute()) {
                    echo json_encode(['message' => 'Étudiant désactivé avec succès']);
                } else {
                    echo json_encode(['error' => 'Erreur lors de la désactivation de l\'étudiant']);
                }
        
                $stmt->close();
            } else {
                echo json_encode(['error' => 'ID non fourni']);
            }
            break;
        
        default:
        // Méthode pour les action non définit
        http_response_code(405);
        echo json_encode(['error' => 'Action non autorisée']);
        break;
}

// Fermer la connexion
$mysqli->close();
?>
