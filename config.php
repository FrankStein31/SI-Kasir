<?php
date_default_timezone_set("Asia/Jakarta");
error_reporting(0);

	// sesuaikan dengan server anda
	$host 	= 'localhost'; // host server
	$host2 	= 'localhost:3309'; // host server
	$user 	= 'root';  // username server
	$pass 	= ''; // password server, kalau pakai xampp kosongin saja
	$dbname = 'db_toko'; // nama database anda
	
	try{
		$config = new PDO("mysql:host=$host2;dbname=$dbname;", $user,$pass);
		//echo 'sukses';
	}catch(PDOException $e){
		$config = new PDO("mysql:host=$host2;dbname=$dbname;", $user,$pass);
		// echo 'KONEKSI GAGAL' .$e -> getMessage();
	}
	
	$view = 'fungsi/view/view.php'; // direktori fungsi select data
?>

