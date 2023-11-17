<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> Sistema de Veterinaria</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#">Inicio</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link" href="productos.php">Productos en Venta</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="medicos.php">Conoce nuestros Medicos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="mapa.html">Ubicaciones Fisicas</a>
  </li>
   <li class="nav-item">
    <a class="nav-link" href="Login.php">Iniciar Sesion</a>
  </li>
</ul>
<div id="carouselExampleControls"  class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://entornosaludable.com/wp-content/uploads/2019/09/papelmatic-higiene-profesional-limpieza-desinfeccion-clinicas-veterinarias-980x617.jpg" width="300" height="500" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://www.portalveterinaria.com/upload/20210308083512mujerveterinaria.jpg" class="d-block w-100" width="300" height="500" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://www.sadenir.com.uy/wp-content/uploads/2020/11/veterinarian-check-ing-puppy-s-health-2.jpg" width="300" height="500" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<?php 
$username = "root"; 
$password = ""; 
$database = "veterinaria"; 
$mysqli = new mysqli("localhost", $username, $password, $database); 
$query = "SELECT * FROM veterinarios";

echo '<br>';
echo '<br>';
echo '<h1> MEDICOS </h1>';
echo '<br>';
echo '<br>';

echo '<table class="table">
<thead>
  <tr>
    <th scope="col">#</th>
    <th scope="col">ID Nombre</th>
    <th scope="col">Horario</th>
    <th scope="col">Cedula</th>
    <th scope="col">Descripcion</th>
  </tr>
</thead>
<tbody>


  </tr>';



     

if ($result = $mysqli->query($query)) {
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["id"];
        $field2name = $row["nombre"];
        $field3name = $row["horario"];
        $field4name = $row["cedula"];
        $field5name = $row["descripcion"]; 

        echo '<tr> 
                  <td>'.$field1name.'</td> 
                  <td>'.$field2name.'</td> 
                  <td>'.$field3name.'</td> 
                  <td>'.$field4name.'</td> 
                  <td>'.$field5name.'</td> 
              </tr>';
    }
    $result->free();
} 
?>
</body>
</html>