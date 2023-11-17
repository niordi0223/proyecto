<!DOCTYPE html>
<html>
  <title>Simple Sign up from</title>
  <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <style>
      html, body {
   
  background-image: url('https://i.pinimg.com/originals/bf/29/74/bf2974f9dd99b34112d52c90068beda9.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
      }
      form {
      border: 5px solid #f1f1f1;
      }
      input[type=text], input[type=password] {
      width: 20%;
      padding: 10px 8px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      }
      .icon {
      font-size: 110px;
      display: flex;
      justify-content: center;
      color: #4286f4;
      }
      button {
      background-color: #4286f4;
      color: white;
      padding: 14px 0;
      margin: 10px 0;
      border: none;
      cursor: grab;
      width: 48%;
      }
      h1 {
      text-align:center;
      fone-size:18;
      }
      button:hover {
      opacity: 0.8;
      }
      .formcontainer {
      text-align: center;
      margin: 24px 50px 12px;
      }
      .container {
      padding: 16px 0;
      text-align:left;
      }
      span.psw {
      float: right;
      padding-top: 0;
      padding-right: 10px;
      }
      /* Change styles for span on extra small screens */
      @media screen and (max-width: 100px) {
      span.psw {
      display: block;
      float: none;
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
 <form action="../Controller/InsertarCitaController.php" method="POST">
  <br> <h1> PEDIR CITA</h1><br>
    Selecciona la fecha de la cita: <input type="date" name="txtcita"><br><br>
    Escribe la mascota: <input type="text" name="txtmascota"><br>
     Escribe él/la Cliente: <input type="text" name="txtcliente"><br>
      Selecciona el id del veterinario: <input type="text" name="txtvete"><br>
      Selecciona la hora: <input type="time" name="hora">
      <br>
      <input type="submit" value="Guardar Cita">
 </form>
<?php

$username = "root"; 
$password = ""; 
$database = "veterinaria"; 
$mysqli = new mysqli("localhost", $username, $password, $database); 
$query = "SELECT * FROM veterinarios";

if ($result = $mysqli->query($query)) {
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["id"];
        $field2name = $row["nombre"];
        $field3name = $row["horario"];
        $field4name = $row["cedula"];
        $field5name = $row["descripcion"]; 

echo '<h3> VETERINARIOS  </h3>';

echo '<table class="table table-dark">';
echo ' <thead class="thead-dark">';
echo '<tr>';
echo '<th scope="col">ID</th>';
echo '<th scope="col">Nombre</th>';
echo '<th scope="col">Horario</th>';
echo '<th scope="col">Cedula</th>';
echo '<th scope="col">Descripcion</th>';
echo '</tr>';
  echo ' </thead">';
  echo '<tr> 
                  <td> '.$field1name.'</td> 
                  <br>
                  <td>'.$field2name.'</td> 
                  <br>
                  <td>'.$field3name.'</td> 
                  <br>
                  <td> '.$field4name.'</td> 
                  <br>
                  <td> '.$field5name.'</td> 
              </tr>';
echo '</div>';
echo '</div>';    
    }
    $result->free();
} 

?>

  </body>
</html>