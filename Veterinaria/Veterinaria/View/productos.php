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
    <a class="nav-link " aria-current="page" href="..">Inicio</a>
  </li>
  
  <li class="nav-item">
    <a class="nav-link active" href="productos.php">Productos en Venta</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="medicos.php">Conoce nuestros Medicos</a>
  </li>
  <li class="nav-item">
    <a class="nav-link " href="mapa.html">Ubicaciones Fisicas</a>
  </li>
   <li class="nav-item">
    <a class="nav-link " href="Login.php">Iniciar Sesion</a>
  </li>
</ul>

<span class="d-block p-2 bg-primary text-white"><h1 class="display-1">Productos de Venta</h1></span>
<br>
<?php 
$username = "root"; 
$password = ""; 
$database = "veterinaria"; 
$mysqli = new mysqli("localhost", $username, $password, $database); 
$query = "SELECT * FROM productos";


if ($result = $mysqli->query($query)) {
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["id"];
        $field2name = $row["nombre"];
        $field3name = $row["descripcion"];
        $field4name = $row["precio"];
        $field5name = $row["stock"]; 

echo '<div class="card" style=width: "10rem">';
echo '  <img src=https://storage.contextoganadero.com/s3fs-public/ganaderia/field_image/2020-01/almacenamieno_medicamentos_ganaderias.jpg width="200" height="500" class="card-img-top" alt="...">';
echo '<div class="card-body">';
  
  echo '<tr> 
                  <td>ID: '.$field1name.'</td> 
                  <br>
                  <td>Nombre:'.$field2name.'</td> 
                  <br>
                  <td>Descripcion: '.$field3name.'</td> 
                  <br>
                  <td>Precio: '.$field4name.'</td> 
                  <br>
                  <td>Stock: '.$field5name.'</td> 
              </tr>';
echo '</div>';
echo '</div>';    
    }
    $result->free();
} 
?>


</body>
</html>