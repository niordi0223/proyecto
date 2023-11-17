<html> 
      <head>
         <title>Sistema de Veterinaria</title>
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
    <a class="navbar-brand" href="InterfazUsuario.html">INTERFAZ USUARIO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Cita
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="registrocita.php">añadir</a></li>
            <li><a class="dropdown-item" href="editar.php">Editar Cita</a></li>
            <li><a class="dropdown-item" href="eliminarcita.php">Eliminar Cita</a></li>
          </ul>
        </li>
      <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Estancia
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="solicitudusuario.php">añadir solicitud de estancia</a></li>
            <li><a class="dropdown-item" href="solieditar.php">Modificar solicitud de estancia</a></li>
            <li><a class="dropdown-item" href="elisoli.php">Eliminar solicitud de estancia</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Mascota
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
            <li><a class="dropdown-item" href="solimascota.php">Registro de mascota</a></li>
            <li><a class="dropdown-item" href="editarmascotas.php">Edicion de mascota</a></li>
            <li><a class="dropdown-item" href="eliminarmascota.php">eliminacion de mascota</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../" tabindex="-1" aria-disabled="true"> Cerrar Sesion </a>
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
      $tabla = "citas";
 
      function Conectarse()
      {
         global $host, $usuario, $contrasena, $baseDeDatos, $tabla;
 
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
 
      if($_GET)
      {
         $queryDelete = "DELETE FROM $tabla WHERE id = ".$_GET['id'].";";
 
         $resultDelete = mysqli_query($link, $queryDelete); 
 
         if($resultDelete)
         {
            echo "<strong>El registro se ha eliminado con exito</strong>.<br>";
         }
         else
         {
            echo "Hubo un problema borrando el registro.";
         }
      }
 
 
      $query = "SELECT id, nombredelC, idveterinario,mascota,dia,hora,estatus FROM $tabla;";
 
      $result = mysqli_query($link, $query); 
 
      ?>
 
      <table class="table table-dark">
         <tr>
            <td>Nombre del Cliente</td>
            <td>ID veterinario</td>
            <td>Mascota</td>
            <td>dia</td>
            <td>hora</td>
            <td>estatus</td>
            
         <tr>
 
      <?php
 
      while($row = mysqli_fetch_array($result))
      { 
         echo "<tr>";
         echo "<td>";
         echo $row["nombredelC"];
         echo "</td>";
         echo "<td>";
         echo $row["idveterinario"];
         echo "</td>";
         echo "<td>";
         echo $row["mascota"];
         echo "</td>";
          echo "<td>";
         echo $row["dia"];
         echo "</td>";
          echo "<td>";
         echo $row["hora"];
         echo "</td>";
           echo "<td>";
         echo $row["estatus"];
         echo "</td>";
         echo "<td>";
         echo "<a href=\"?id=".$row["id"]."\">Borrrar</a>";
         echo "</td>";
         echo "</tr>";
 
      } 
 
      mysqli_free_result($result);
 
      mysqli_close($link);
 
      ?>
 
      </table>
      <hr>
 
      </body> 
      </html>