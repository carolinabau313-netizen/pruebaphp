<?php

require_once 'database.php';
class Usuario {

    public $db;

    public function __construct(){
        $this->db = database::conectar();
    }

    public $id_usuario;
    public $nombre;
    public $apellido;
    public $email;
    public $password;
    public $rol;
    public $imagen;

    function getid_usuario(){
        $result = $this->id_usuario;
    
    }

    function getnombre(){
        $result = $this->nombre;
    }

    function getapellido(){
        $result = $this->apellido;
    }

    function getemail(){
        $result = $this->email;
    }

    function getpassword(){
        $result = $this->password;
    }

    function getrol(){
        $result = $this->rol;
    }

    function getimagen(){
        $result = $this->imagen;
    }

    function setid_usuario($id_usuario){
        $this->id_usuario = $id_usuario;
    }

    function setnombre($nombre){
        $this->nombre = $nombre;
    }

    function setapellido($apellido){
        $this->apellido = $apellido;
    }

    function setemail($email){
        $this->email = $email;
    }

    function setpassword($password){
        $this->password = $password;
    }

    function setrol($rol){
        $this->rol = $rol;
    }

    function setimagen($imagen){
        $this->imagen = $imagen;
    }
    
}