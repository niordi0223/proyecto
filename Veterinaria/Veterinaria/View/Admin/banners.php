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
    <form name="MiForm" id="MiForm" method="post" action="cargar.php" enctype="multipart/form-data">
        <h4 class="text-center">Seleccione imagen a cargar</h4>
        <div class="form-group">
          <label class="col-sm-2 control-label">Archivos</label>
          <div class="col-sm-8">
            <input type="file" class="form-control" id="image" name="image" multiple>
          </div>
          <button name="submit" class="btn btn-primary">Cargar Imagen</button>
        </div>
      </form>


<?php 
$db = mysqli_connect("localhost","root","","veterinaria"); 
$sql = "SELECT * FROM images_tabla";
$sth = $db->query($sql);

 while ($result=mysqli_fetch_array($sth)) {
  echo '<table class="table table-dark" style="text-align:center;">';
echo '  <tr>';
echo '  <td>BANNERS</td>';
echo '  </tr>';
 echo "<tr>";
echo "<td>";
echo '<img src="data:image/jpeg;base64,'.base64_encode( $result['imagenes'] ).'"/>';
 echo "</td>";
 echo '  </tr>';
echo '</table>';
}


?>
 
</body>
</html>