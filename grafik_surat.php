<?php ob_start();

    //cek session
    session_start();

    if(empty($_SESSION['admin'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {
?>

<!doctype html>
<html lang="en">

<!-- Include Head START -->
<?php include('include/head.php'); ?>
<!-- Include Head END -->

<!-- Body START -->
<body class="bg">

<!-- Header START -->
<header>

<!-- Include Navigation START -->
<?php include('include/menu.php'); ?>
<!-- Include Navigation END -->

</header>
<!-- Header END -->

<!-- Main START -->
<main>

    <!-- container START -->
    <div class="container">
    	<div class="row">
    		<div class="col-md-12">
				<form id="form11" class="form-inline" name="form1" method="post" action="cetak.php" target="_blank" enctype="application/x-www-form-urlencoded">
					
					<select class="form-control" name="bln1" id="bln1">
						<option	 value="01">Januari	</option>
						<option	 value="02">Februari</option>
						<option	 value="03">Maret</option>
						<option	 value="04">April</option>
						<option	 value="05">Mei</option>
						<option	 value="06">Juni</option>
						<option	 value="07">Juli</option>
						<option	 value="08">Agustus</option>
						<option	 value="09">September</option>
						<option	 value="10">Oktober</option>
						<option	 value="11">Nopember</option>
						<option	 value="12">Desember</option>
					</select>
					
					<select class="form-control" name="thn1" id="thn1">

					<?php 
						$tahun_terakhir = date("Y") - 4;
						$tahun_sekarang = date("Y");
						
						for ($i=$tahun_terakhir; $i <= $tahun_sekarang; $i++)
						{ 
							echo "<option value='$i'>$i</option>";
						}
					?>

					</select>
					
					<button  type="submit" name="Submit" value="Lihat Grafik" class="btn btn-info">Lihat Grafik</button>
				</form>
<p>
	
	<!-- code added by ramdan --> 
	<div class="row">
		<div style="height: 400px; width:1000px;">
			<canvas id="canvas_grafik_surat_masuk" height="500" width="1000">Tekan tombol cetak untuk menampilkan grafik</canvas>
		</div>		
	</div>
    
	<div class="row" style="margin: 120px 0 120px 0;">
		<div style="height: 400px; width:1000px;">
			<canvas id="canvas_grafik_surat_keluar" height="500" width="1000">Tekan tombol cetak untuk menampilkan grafik</canvas>
		</div>
	</div>
	
	<p>
	<!-- end code edited -->
</div>
    <!-- container END -->

</main>
<!-- Main END -->

<!-- Include Footer START -->
<?php include('include/footer.php'); ?>
<!-- Include Footer END -->

</body>
<!-- Body END -->

</html>

<?php
    }
?>