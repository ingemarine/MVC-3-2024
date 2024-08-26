<?php 
require_once __DIR__ . '/../includes/app.php';


use MVC\Router;
use Controllers\AppController;
use Controllers\DetalleController;
$router = new Router();
$router->setBaseURL('/' . $_ENV['APP_NAME']);

$router->get('/', [AppController::class,'index']);

// DETALLE
$router->get('/productos/estadisticas', [DetalleController::class, 'estadisticas']);
$router->get('/API/detalle/estadisticas', [DetalleController::class, 'detalleVentasAPI']);

// Comprueba y valida las rutas, que existan y les asigna las funciones del Controlador
$router->comprobarRutas();
