<?php

// Aca mostramostodas las acciones que puede hacer un controlador 
class UsuarioControllers{
    public function mostrarTodos(){
        require_once 'models/usuariomodelo.php';
        $usuario = new Usuario();
        $todos_los_usuarios = $usuario->conseguirtodos();
        require_once 'views/usuario/mostrar-todos.php';

    }
}