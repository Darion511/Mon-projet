<?php
require_once 'StatCommande.php';

// Headers CORS pour permettre les requêtes entre domaines
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json');

// Instanciation de l'objet StatCommande
$statCommande = new StatCommande();

// Obtenir les statistiques
$data = [
    'revenu_mois' => $statCommande->getRevenuMois(),
    'nombre_commandes_mois' => $statCommande->getNombreCommandesMois(),
    'revenu_jour' => $statCommande->getRevenuJour(),
    'stats_par_mois' => $statCommande->getStatsParMois() // Nouvelle donnée ajoutée pour les statistiques par mois
];

// Retourner les données en JSON
echo json_encode($data);
?>
