<?php
require_once '../models/Etudiantlogin.php';
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');


class EtudiantController {
    public function login() {
        header('Content-Type: application/json');
    
        $data = json_decode(file_get_contents("php://input"));
    
        if (!$data || !isset($data->email) || !isset($data->password)) {
            echo json_encode(['success' => false, 'message' => 'Email ou mot de passe manquant.']);
            return;
        }
    
        $email = $data->email;
        $password = $data->password;
    
        $etudiantModel = new Etudiant();
        $etudiant = $etudiantModel->getByEmail($email);
    
        if (!$etudiant) {
            echo json_encode(['success' => false, 'message' => 'Email ou mot de passe incorrect.']);
            return;
        }
    
        // Vérification directe du mot de passe
        if ($password === $etudiant['mot_de_passe']) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Email ou mot de passe incorrect.']);
        }
    }
    
    
}



?>
