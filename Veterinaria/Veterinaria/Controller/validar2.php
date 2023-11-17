<?php
include('db.php');
$usuario=$_POST['login'];
$contraseña=$_POST['password'];
$restriccion=1;
session_start();
$_SESSION['usuario']=$usuario;


$conexion=mysqli_connect("localhost","root","","veterinaria");


$consulta1="SELECT *FROM usuarios where usuario='".$usuario."' and contra='".$contraseña."'";
$resultado=mysqli_query($conexion,$consulta1);
$filas=mysqli_num_rows($resultado);


if($filas){
  
     header("location:../View/interfazusuario.html");

}else{

    ?>
    
  <h1 class="bad">ERROR DE AUTENTIFICACION</h1>
  <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);
