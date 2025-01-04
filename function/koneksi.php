<?php
    $server = "localhost";
    $user = "root";
    $pass = "";
    $db = "beassiswa_farrel"; // cek database di "localhost/phpmyadmin", cek juga data sql yang sudah disediakan.

        $conn = mysqli_connect($server, $user, $pass, $db);

        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());            
        } else{
            return $conn;
        }
?>
