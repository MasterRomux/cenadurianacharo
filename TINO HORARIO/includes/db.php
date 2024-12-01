<?php
$conn = mysqli_connect("localhost", "root", "", "escuela1");

if (!$conn) {
    die("Conexión fallida: " . mysqli_connect_error());
}
?>
