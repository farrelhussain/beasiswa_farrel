<?php 
	include 'function/koneksi.php';
	?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Beasiswa</title>
    <link rel="stylesheet" href="./assets/css/style.css"/>
    <link href="./assets/css/bootstrap@5.0.2_css.min.css" rel="stylesheet">
    <script src="./assets/js/bootstrap@5.0.2_js.bundle.min.js"></script>
    <script type="text/javascript" src="assets/js/Chart.js"></script>
</head>
<body class="bg-secondary">
<div class="container">
    <nav class="navbar navbar-dark navbar-expand-lg bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Pendaftaran Beasiswa</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="syarat_beasiswa.php">Jenis Pilihan Beasiswa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " aria-current="page" href="index.php">Daftar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hasil.php">Hasil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="grafik.php">Grafik</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <main class="min-vh-100 d-flex flex-column justify-content-center align-items-center p-5">
    <div class="table-responsive p-5 bg-light">
        <center><h3>Grafik Pendaftaran Beasiswa</h3><center>
        <div style="width: 800px;margin: 0px auto;">
		<canvas id="myChart"></canvas>
	    </div>
        <script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ["Akademik", "Non Akademik", "lainnya"],
				datasets: [{
					label: '',
					data: [
					<?php 
					$jumlah_akademik = mysqli_query($conn,"select * from daftar_beasiswa where beasiswa='Akademik'");
					echo mysqli_num_rows($jumlah_akademik);
					?>, 
					<?php 
					$jumlah_nonakademik = mysqli_query($conn,"select * from daftar_beasiswa where beasiswa='Non Akademik'");
					echo mysqli_num_rows($jumlah_nonakademik);
					?>, 
					<?php 
					$jumlah_lainnya = mysqli_query($conn,"select * from daftar_beasiswa where beasiswa='Lainnya'");
					echo mysqli_num_rows($jumlah_lainnya);
					?>, 
					],
					backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)'
					],
					borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
    </div>
    </main>
    
</div>
</body>
</html>