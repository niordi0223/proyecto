<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "veterinaria";
$mascota=$_POST['txtmascota'];
$cliente=$_POST['txtcliente'];



$puntuacion=rand(10000,100000);
        
 $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


$sql = "INSERT INTO prueba (prueba,descripcion)
VALUES ('".$mascota."','".$cliente."')";





if ($conn->query($sql) === TRUE) {
echo '<script>alert (" Hemos guardado sus cita su numero de folio es: '.$puntuacion.' ");</script>';
  header('Location: ../View/Admin/interfazadmin.html');

} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>