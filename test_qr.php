<?php
// Sertakan library PHP QR Code
include 'libs/qrlib.php';

// Folder untuk menyimpan QR Code
$dir = 'temp/';

// Buat folder jika belum ada
if (!file_exists($dir)) {
    mkdir($dir);
}

// Data yang ingin dimasukkan ke QR Code
$data = "Total Harga: Rp. 100,000";

// Path file QR Code
$filePath = $dir . 'test_qrcode.png';

// Generate QR Code
QRcode::png($data, $filePath, QR_ECLEVEL_L, 6);

// Tampilkan QR Code
echo "<h1>QR Code Generated</h1>";
echo "<img src='$filePath' alt='QR Code'>";
