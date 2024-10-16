 <?php 
	$id = $_GET['emoney'];
	$hasil = $lihat -> emoney_edit($id);
?>
 <a href="index.php?page=emoney" class="btn btn-primary mb-3"><i class="fa fa-angle-left"></i> Balik </a>
 <h4>Edit E-Money</h4>
 <?php if(isset($_GET['success'])){?>
 <div class="alert alert-success">
     <p>Edit Data Berhasil !</p>
 </div>
 <?php }?>
 <?php if(isset($_GET['remove'])){?>
 <div class="alert alert-danger">
     <p>Hapus Data Berhasil !</p>
 </div>
 <?php }?>
<div class="card card-body">
	<div class="table-responsive">
		<table class="table table-striped">
			<form action="fungsi/edit/edit.php?emoney=edit" method="POST">
			<input type="hidden" name="id" value="<?php echo $hasil['id']; ?>"> 
			<!-- terbaru -->
				<tr>
					<td>NIM</td>
					<td><input type="text" class="form-control" value="<?php echo $hasil['nim'];?>" name="nim"></td>
				</tr>
					<td>Nama</td>
					<td><input type="text" class="form-control" value="<?php echo $hasil['nama'];?>" name="nama"></td>
				</tr>
				<tr>
					<td>foto</td>
					<td><input type="file" class="form-control" value="<?php echo $hasil['foto'];?>" name="foto"></td>
				</tr>
				<tr>
					<td>Saldo</td>
					<td><input type="number" class="form-control" value="<?php echo $hasil['saldo'];?>" name="saldo"></td>
				</tr>
				<tr>
					<td></td>
					<td><button class="btn btn-primary"><i class="fa fa-edit"></i> Update Data</button></td>
				</tr>
			</form>
		</table>
	</div>
</div>