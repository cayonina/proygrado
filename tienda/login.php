<?php

    include 'conexion.php';

    $username = $_POST['username'];
    $password = $_POST['password'];

    $consultar=$connect->query("SELECT * FROM usuarios WHERE username='".$username."' and password='".$password."'");

    $resultado=array();

    if(isset($_POST['username'])) { 
        $username=$_POST['username']; 
        if(isset($_POST['password'])) { 
            $password=$_POST['password']; 
            $consultar=$connect->query("SELECT * FROM usuarios WHERE username='".$username."' and password='".$password."'"); 
            $resultado=array();
        }
    }
    ?>