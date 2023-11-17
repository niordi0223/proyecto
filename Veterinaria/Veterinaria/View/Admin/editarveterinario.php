<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sistema de Veterinario</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <style>
body {
  background-image: url('https://i.pinimg.com/originals/bf/29/74/bf2974f9dd99b34112d52c90068beda9.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="interfazadmin.html">INTERFAZ ADMIN (Auxiliar de Clinica)</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Medicina
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="añadirmedicina.php">añadir</a></li>
            <li><a class="dropdown-item" href="editarmedicina.php">Editar</a></li>
          </ul>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="banners.php" tabindex="-1" aria-disabled="true"> banners </a>
        </li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Prueba
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="añadirpruebas.php">Registro</a></li>
            <li><a class="dropdown-item" href="editarprueba.php">Edicion</a></li>
          </ul>
        </li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Veterinarios
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="añadirveterinario.php">Registro</a></li>
            <li><a class="dropdown-item" href="editarveterinario.php">Edicion</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
        <a class="nav-link" href="estancias.php"tabindex="-1" aria-expanded="true">
            Estancias
          </a>
        </li>
       <li class="nav-item">
             <a class="nav-link" href="../../" tabindex="-1" aria-disabled="true"> Cerrar Sesion </a>
        </li>
      </ul>
    
    </div>
  </div>
</nav>
      <?php
 
      // Dirección o IP del servidor MySQL
      $host = "localhost";
 
      // Puerto del servidor MySQL
 
      // Nombre de usuario del servidor MySQL
      $usuario = "root";
 
      // Contraseña del usuario
      $contrasena = "";
 
      // Nombre de la base de datos
      $baseDeDatos ="veterinaria";
 
      // Nombre de la tabla a trabajar
      $tabla = "veterinarios";
 
      function Conectarse()
      {
         global $host, $puerto, $usuario, $contrasena, $baseDeDatos, $tabla;
 
         if (!($link = mysqli_connect($host, $usuario, $contrasena))) 
         { 
            echo "Error conectando a la base de datos.<br>"; 
            exit(); 
            }
         else
         {
           
         }
         if (!mysqli_select_db($link, $baseDeDatos)) 
         { 
            echo "Error seleccionando la base de datos.<br>"; 
            exit(); 
         }
         else
         {
           
         }
      return $link; 
      } 
 
      $link = Conectarse();
 
      if($_POST)
      {
         $queryUpdate = "UPDATE $tabla SET nombre = '".$_POST['nombreForm']."',
                        horario = '".$_POST['apellidoForm']."',cedula='".$_POST['cedula']."',descripcion='".$_POST['descripcion']."'
                        WHERE id = ".$_POST['idForm'].";";
 
         $resultUpdate = mysqli_query($link, $queryUpdate); 
 
         if($resultUpdate)
         {
            echo "<strong>El registro ID ".$_POST['idForm']." se edito con exito</strong>. <br>";
         }
         else
         {
            echo "No se pudo actualizar el registro. <br>";
         }
 
      }
 
      $query = "SELECT id, nombre, horario,cedula,descripcion FROM $tabla;";
 
      $result = mysqli_query($link, $query); 
 
      ?>
      <br>
      <br>
      <h1>Edicion de Veterinario</h1>
      <br>
      <table class="table table-dark">
         <tr>
            <td>Nombre</td>
            <td>Horario</td>
            <td>Cedula</td>
            <td>Descripcion</td>
         <tr>
 
      <?php
 
      while($row = mysqli_fetch_array($result))
      { 
         echo "<tr>";
         echo "<td>";
         echo $row["nombre"];
         echo "</td>";
          echo "<td>";
         echo $row["horario"];
         echo "</td>";
          echo "<td>";
         echo $row["cedula"];
         echo "</td>";
         echo "<td>";
         echo $row["descripcion"];
         echo "</td>";
         echo "<td>";
         echo "<a href=\"?id=".$row["id"]."\">Actualizar</a>";
         echo "</td>";
         echo "</tr>";
 
      } 
 
      mysqli_free_result($result); 
 
      ?>
 
      </table>
      <hr>
 
      <?php
      if($_GET)
      {
         $querySelectByID = "SELECT id, nombre, horario,cedula,descripcion FROM $tabla WHERE id = ".$_GET['id'].";";
 
         $resultSelectByID = mysqli_query($link, $querySelectByID); 
 
         $rowSelectByID = mysqli_fetch_array($resultSelectByID);
      ?>
 
      <form action="" method="post">
         <input type="hidden" value="<?=$rowSelectByID['id'];?>" name="idForm">
         Nombre: <input type="text" name="nombreForm" value="<?=$rowSelectByID['nombre'];?>"> <br> <br>
         horario: <input type="text" name="apellidoForm" value="<?=$rowSelectByID['horario'];?>"> <br> <br>
         cedula: <input type="text" name="cedula" value="<?=$rowSelectByID['cedula'];?>"> <br> <br>
         descripcion: <input type="text" name="descripcion" value="<?=$rowSelectByID['descripcion'];?>"> <br> <br>
         <input type="submit" value="Guardar">
      </form>
 
      <?php
      }
      mysqli_close($link);
      ?>
      </body> 
      </html>