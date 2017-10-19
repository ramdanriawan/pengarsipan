<?php error_reporting(0);
$tgl_surat = "$_GET[thn1]-$_GET[bln1]";

$pdo = new PDO("mysql:host=localhost;dbname=pengarsipan", "root", "");
$query1 = $pdo->query("SELECT DISTINCT tgl_surat from tbl_surat_masuk where tgl_surat like '%$tgl_surat%'");

while ($row1 = $query1->fetch(PDO::FETCH_OBJ)) {
	$jumlah1 = $pdo->query("SELECT tgl_surat from tbl_surat_masuk where tgl_surat like '%$row1->tgl_surat%'")->rowCount();
	$row1->jumlah = $jumlah1;
	$data1[] = $row1;
}

$query2 = $pdo->query("SELECT DISTINCT tgl_surat from tbl_surat_keluar where tgl_surat like '%$tgl_surat%'");

while ($row2 = $query2->fetch(PDO::FETCH_OBJ)) {
	$jumlah2 = $pdo->query("SELECT tgl_surat from tbl_surat_keluar where tgl_surat like '%$row2->tgl_surat%'")->rowCount();
	$row2->jumlah = $jumlah2;
	$data2[] = $row2;
}

$dataasli["surat_masuk"] = $data1;
$dataasli["surat_keluar"] = $data2;

if($dataasli["surat_masuk"] === null || $dataasli["surat_keluar"] === null)
{
	die("false");
}


echo json_encode($dataasli);

 ?>