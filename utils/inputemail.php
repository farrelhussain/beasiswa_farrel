<?php
include('../function/koneksi.php');
$searchTerm = $_GET['term'];
$sql = "SELECT * FROM data_mahasiswa WHERE email LIKE '%".$searchTerm."%'"; 

$result = $conn->query($sql); 
    if ($result->num_rows > 0) {
        $dataMail = array(); 
        while($row = $result->fetch_assoc()) {
            $data['id']    = $row['id']; 
            $data['value'] = $row['email'];
            array_push($dataMail, $data);
        } 
    }
echo json_encode($dataMail);
?>