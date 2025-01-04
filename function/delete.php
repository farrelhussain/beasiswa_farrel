<?php
include "koneksi.php";
$del = $_GET['id'];
$query = mysqli_query($conn, "DELETE FROM daftar_beasiswa WHERE id='$del'");
if ($query) {
    header("location: ../hasil.php");
}
?>