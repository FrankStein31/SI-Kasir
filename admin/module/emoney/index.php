<h4>E-Money</h4>
<br />
<?php if (isset($_GET['success-stok'])) { ?>
    <div class="alert alert-success">
        <p>Tambah Stok Berhasil !</p>
    </div>
<?php } ?>
<?php if (isset($_GET['success'])) { ?>
    <div class="alert alert-success">
        <p>Tambah Data Berhasil !</p>
    </div>
<?php } ?>
<?php if (isset($_GET['remove'])) { ?>
    <div class="alert alert-danger">
        <p>Hapus Data Berhasil !</p>
    </div>
<?php } ?>

<?php
$sql = " select * from barang where stok <= 3";
$row = $config->prepare($sql);
$row->execute();
$r = $row->rowCount();
if ($r > 0) {
    echo "
				<div class='alert alert-warning'>
					<span class='glyphicon glyphicon-info-sign'></span> Ada <span style='color:red'>$r</span> barang yang Stok tersisa sudah kurang dari 3 items. silahkan pesan lagi !!
					<span class='pull-right'><a href='index.php?page=barang&stok=yes'>Cek Barang <i class='fa fa-angle-double-right'></i></a></span>
				</div>
				";
}
?>
<!-- Trigger the modal with a button -->
<button type="button" class="btn btn-primary btn-md mr-2" data-toggle="modal" data-target="#myModal">
    <i class="fa fa-plus"></i> Tambah Data</button>
<br />
<!-- <a href="index.php?page=barang&stok=yes" class="btn btn-warning btn-md mr-2">
    <i class="fa fa-list"></i> Sortir Stok Kurang</a>
<a href="index.php?page=barang" class="btn btn-success btn-md">
    <i class="fa fa-refresh"></i> Refresh Data</a>
<div class="clearfix"></div> -->


<br />
<div class="card card-body">
    <div class="table-responsive">
        <table class="table table-bordered table-striped table-sm" id="example1">
            <thead>
                <tr style="background:#DFF0D8;color:#333;">
                    <th>No.</th>
                    <th>Foto</th>
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Saldo</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $sql = 'SELECT * FROM emoney';
                $stmt = $config->prepare($sql);
                $stmt->execute();
                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

                foreach ($data as $isi):
                ?>
                    <tr>
                        <td><?php echo $id++; ?></td>
                        <td><img src="<?php echo $isi['foto']; ?>" alt="Foto" style="width:50px; height:50px;"></td>
                        <td><?php echo $isi['nim']; ?></td>
                        <td><?php echo $isi['nama']; ?></td>
                        <td><?php echo number_format($isi['saldo'], 2, ',', '.'); ?></td>
                        <td>
                            <a href="index.php?page=emoney/edit&emoney=<?php echo $isi['id']; ?>" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i> Edit</a>
                            <a href="fungsi/hapus/hapus.php?emoney=hapus&id=<?php echo $isi['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus data ini?')"><i class="fa fa-trash"></i> Hapus</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>


<!-- end view barang -->
<!-- tambah barang MODALS-->
<!-- Modal -->

<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content" style=" border-radius:0px;">
            <div class="modal-header" style="background:#285c64;color:#fff;">
                <h5 class="modal-title"><i class="fa fa-plus"></i> Tambah Produk</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <form action="fungsi/tambah/tambah.php?emoney=tambah" method="POST">
                <div class="modal-body">
                    <table class="table table-striped bordered">
                        <tr>
                            <td>Foto</td>
                            <td><input type="file" name="foto" class="form-control" required></td>
                        </tr>
                        <tr>
                            <td>NIM</td>
                            <td><input type="text" name="nim" class="form-control" required autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td>Nama</td>
                            <td><input type="text" name="nama" class="form-control" required autocomplete="off"></td>
                        </tr>
                        <tr>
                            <td>Saldo</td>
                            <td><input type="number" name="saldo" class="form-control" step="0.01" required autocomplete="off"></td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah
                        Data</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                </div>
            </form>
        </div>
    </div>

</div>