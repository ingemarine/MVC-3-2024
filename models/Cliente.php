<?php 

namespace Model;

class Cliente extends ActiveRecord {
    protected static $tabla = 'cliente'; 
    protected static $columnasBD = ['cli_id', 'cli_nombre', 'cli_apellido', 'cli_nit', 'cli_telefono', 'cli_situacion'];
    protected static $idTabla = 'cli_id';

    public $cli_id; 
    public $cli_nombre;
    public $cli_apellido;
    public $cli_nit;
    public $cli_telefono;

    public $cli_situacion;


    public function __construct($args = []) {
        $this->cli_id = $args['cli_id'] ?? null;
        $this->cli_nombre = $args['cli_nombre'] ?? '';
        $this->cli_apellido = $args['cli_apellido'] ?? null;
        $this->cli_nit = $args['cli_nit'] ?? 0;
        $this->cli_telefono = $args['cli_telefono'] ?? '';
        $this->cli_situacion = $args['cli_situacion'] ?? 1;

    }
}
