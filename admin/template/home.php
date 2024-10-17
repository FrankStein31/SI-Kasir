<!-- <div style="background-color: #FE9900; color: white; padding: 10px; border-radius: 5px;">
    &#9432; <b>Sistem Kasir Kedai Kopi Tanah Jawa - jika ada kendala silahkan langsung hubungi 08883866931 (Frankie)</b>
</div> -->
<br>
<h3>Dashboard</h3>
<br/>
<?php 
	$sql=" select * from barang where stok <= 3";
	$row = $config -> prepare($sql);
	$row -> execute();
	$r = $row -> rowCount();
	if($r > 0){
?>
<?php
		echo "
		<div class='alert alert-warning'>
			<span class='glyphicon glyphicon-info-sign'></span> Ada <span style='color:red'>$r</span> barang yang Stok tersisa sudah kurang dari 3 items. silahkan pesan lagi !!
			<span class='pull-right'><a href='index.php?page=barang&stok=yes'>Tabel Barang <i class='fa fa-angle-double-right'></i></a></span>
		</div>
		";	
	}
?>
<?php $hasil_barang = $lihat -> barang_row();?>
<?php $hasil_kategori = $lihat -> kategori_row();?>
<?php $stok = $lihat -> barang_stok_row();?>
<?php $jual = $lihat -> jual_row();?>
<div class="row">

    <!--STATUS cardS -->
    <div class="col-md-3 mb-3">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fas fa-cubes"></i> Nama Produk</h6>
            </div>
            <div class="card-body">
                <center>
                    <h1><?php echo number_format($hasil_barang);?></h1>
                </center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=barang'>Tabel
                    Produk <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
        <!--/grey-card -->
    </div><!-- /col-md-3-->
    <!-- STATUS cardS -->
    <div class="col-md-3 mb-3">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fas fa-chart-bar"></i> Stok Produk</h6>
            </div>
            <div class="card-body">
                <center>
                    <h1><?php echo number_format($stok['jml']);?></h1>
                </center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=barang'>Tabel
                    Produk <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
        <!--/grey-card -->
    </div><!-- /col-md-3-->
    <!-- STATUS cardS -->
    <div class="col-md-3 mb-3">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fas fa-upload"></i> Telah Terjual</h6>
            </div>
            <div class="card-body">
                <center>
                    <h1><?php echo number_format($jual['stok']);?></h1>
                </center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=laporan'>Tabel
                    laporan <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
        <!--/grey-card -->
    </div><!-- /col-md-3-->
    <div class="col-md-3 mb-3">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h6 class="pt-2"><i class="fa fa-bookmark"></i> Kategori Produk</h6>
            </div>
            <div class="card-body">
                <center>
                    <h1><?php echo number_format($hasil_kategori);?></h1>
                </center>
            </div>
            <div class="card-footer">
                <a href='index.php?page=kategori'>Tabel
                    Kategori <i class='fa fa-angle-double-right'></i></a>
            </div>
        </div>
        <!--/grey-card -->
    </div>
    

    <!-- Top Sold Products Chart -->
    <?php
    // Query untuk mendapatkan total jumlah terjual dan nama barang
    $sql = "SELECT b.nama_barang, SUM(n.jumlah) AS total_jumlah 
            FROM nota n 
            JOIN barang b ON n.id_barang = b.id_barang 
            GROUP BY b.nama_barang 
            ORDER BY total_jumlah DESC 
            LIMIT 10";
    $row = $config->prepare($sql);
    $row->execute();
    $top_sold_items = $row->fetchAll(PDO::FETCH_ASSOC);

    $labels = [];
    $data = [];

    // Loop untuk mengisi array labels dan data
    foreach ($top_sold_items as $item) {
        $labels[] = $item['nama_barang']; // Menggunakan nama barang sebagai label
        $data[] = (int) $item['total_jumlah'];
    }
?>

<div class="col-md-12 mb-3">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h6 class="pt-2"><i class="fas fa-chart-bar"></i> Top Sold Products</h6>
        </div>
        <div class="card-body" style="height: 600px;"> <!-- Menetapkan tinggi card -->
            <canvas id="topSoldChart" style="width: 100%; height: 100%;"></canvas> <!-- Sesuaikan ukuran canvas -->
        </div>
    </div>
</div>

<script>
    var ctx = document.getElementById('topSoldChart').getContext('2d');
    var topSoldChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: <?php echo json_encode($labels); ?>,
            datasets: [{
                label: 'Total Sold',
                data: <?php echo json_encode($data); ?>,
                backgroundColor: 'rgba(75, 192, 192, 0.6)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        },
        options: {
            maintainAspectRatio: false, // Disable default aspect ratio to allow canvas resizing
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        stepSize: 1 // Set step size to 1 for whole numbers
                    }
                }
            }
        }
    });
</script>


    <!-- /col-md-3-->
</div>