<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "veterinaria";
$fecha=$_POST['txtcita'];
$mascota=$_POST['txtmascota'];
$cliente=$_POST['txtcliente'];
$vete=$_POST['txtvete'];
$hora=$_POST['hora'];


$puntuacion=rand(10000,100000);
        
 $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


$sql = "INSERT INTO citas (id,nombredelC,idveterinario,mascota,dia,hora,estatus)
VALUES ('".$puntuacion."','".$cliente."','".$vete."','".$mascota."','".$fecha."','".$hora."','Pendiente')";





if ($conn->query($sql) === TRUE) {
echo '<script>alert (" Hemos guardado sus cita su numero de folio es: '.$puntuacion.' ");</script>';
  header('Location: ../View/InterfazUsuario.html');

} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>