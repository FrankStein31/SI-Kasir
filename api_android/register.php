<?php
// Nonaktifkan pesan error PHP agar tidak mengganggu output JSON
error_reporting(0);

// Set header untuk JSON dan CORS
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

try {
    // Konfigurasi database
    $host = "localhost";
    $user = "root";
    $pass = "";
    $db = "db_toko";

    // Membuat koneksi
    $conn = new mysqli($host, $user, $pass, $db);

    // Cek koneksi
    if ($conn->connect_error) {
        throw new Exception("Connection failed: " . $conn->connect_error);
    }

    // Terima data dari Android
    $nama = isset($_POST['nama']) ? $_POST['nama'] : '';
    $nim = isset($_POST['nim']) ? $_POST['nim'] : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';

    // Validasi input
    if (empty($nama) || empty($nim) || empty($password)) {
        throw new Exception("Semua field harus diisi");
    }

    // Cek apakah NIM sudah terdaftar
    $checkQuery = "SELECT nim FROM login_mhs WHERE nim = ?";
    $stmt = $conn->prepare($checkQuery);
    $stmt->bind_param("s", $nim);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        throw new Exception("NIM sudah terdaftar");
    }

    // Hash password
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Query insert
    $query = "INSERT INTO login_mhs (nama, nim, password) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $nama, $nim, $hashedPassword);

    // Eksekusi query
    if ($stmt->execute()) {
        echo json_encode([
            "success" => true,
            "message" => "Registrasi berhasil"
        ]);
    } else {
        throw new Exception("Gagal melakukan registrasi: " . $conn->error);
    }

    // Tutup statement dan koneksi
    $stmt->close();
    $conn->close();

} catch (Exception $e) {
    // Return error dalam format JSON
    echo json_encode([
        "success" => false,
        "message" => $e->getMessage()
    ]);
}
?>