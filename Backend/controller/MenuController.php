<?php
require_once '../models/Menu.php';

class MenuController {
    public function getMenus() {
        $menuModel = new Menu();
        $menus = $menuModel->getAll();
        
        echo json_encode($menus); // Renvoie les menus sous forme de JSON, y compris les URLs d'image
    }
}
?>
