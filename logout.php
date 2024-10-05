<?php
	session_start();
	session_destroy();
	echo '<script>alert("Anda Telah Logout dari Sistem Kasir");window.location="login.php"</script>';
?>
