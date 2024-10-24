<?php
header("Access-Control-Allow-Origin: *"); // Allow all origins
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header('Content-Type: application/json'); // Set response format to JSON

require_once '../controller/EtudiantloginController.php';
require_once '../controller/MenuController.php';

// Debugging: Log the requested URI and method
error_log("Requested URI: " . $_SERVER['REQUEST_URI']);
error_log("Request Method: " . $_SERVER['REQUEST_METHOD']);

// Handle preflight OPTIONS request
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header("HTTP/1.1 204 No Content");
    exit; // End the script
}

// Check the HTTP method and request URI
if ($_SERVER['REQUEST_METHOD'] === 'POST' && strpos($_SERVER['REQUEST_URI'], '/api/login') !== false) {
    $controller = new EtudiantController();
    $controller->login();
} elseif ($_SERVER['REQUEST_METHOD'] === 'GET' && strpos($_SERVER['REQUEST_URI'], '/api/menus') !== false) {
    $controller = new MenuController();
    $controller->getMenus(); // Call the method to get menus
} else {
    header("HTTP/1.1 404 Not Found");
    echo json_encode(['message' => 'Route non trouvée']);
}
?>
