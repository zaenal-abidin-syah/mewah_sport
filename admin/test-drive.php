<?php include "../koneksi.php" ?>

<!-- Lihat Data Produk -->
<?php
	$query = "SELECT * FROM tbl_test_drive p JOIN tbl_produk k ON p.id_produk=k.id_produk";
    $result = mysqli_query($db, $query);

	if (isset($_GET['id']))
{
    //mengambil id pos
    $id = $_GET['id'];
    //menghapus data
    $queryHapus = "DELETE FROM tbl_test_drive WHERE id_test_drive='$id'";
    $execHapus = mysqli_query($db, $queryHapus);

    if ($execHapus)
    {
        //menampilkan pesan dan redirec ke halaman produk
        echo "<script>alert('Postingan sudah dihapus');</script>";
        echo "<script>location='index.php?pages=test-drive';</script>";
    }
}
?>

<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-body">
				<table id="datatable" class="table table-striped dt-responsive nowrap table-vertical" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th>No</th>
							<th>Nama</th>
							<th>Produk</th>
							<th>Provinsi</th>
							<th>Cabang</th>
							<th>Tanggal</th>
                            <th>Waktu</th>
							<th>Nomor Telepon</th>
							<th>Email</th>
							<th>Hapus</th>
						</tr>
					</thead>
					<tbody>
                        <?php $no = 1;?>
                        <?php while ($data = mysqli_fetch_array($result)) : ?>
                        <?php $tanggal = $data['tanggal']; ?>
						<tr>
							<td><?php echo $no ?></td>
							<td><?php echo $data['nama'] ?></td>
							<td><?php echo $data['nm_produk'] ?></td>
							<td><?php echo $data['provinsi'] ?></td>
							<td><?php echo $data['cabang'] ?></td>
							<td><?php echo date("d/m/Y", strtotime($tanggal)); ?></td>
							<td><?php echo $data['waktu'] ?></td>
							<td><?php echo $data['nomor_telepon'] ?></td>
							<td><?php echo $data['email'] ?></td>
							<!-- <td><?php echo $data['catatan'] ?></td> -->
							<td>
								<!-- <a href="index.php?pages=ubah-pos&id=<?php echo $data['id_test_drive']; ?>" class="m-r-15 text-muted" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Edit"><i
										class="mdi mdi-pencil font-18"></i></a> -->
								<a href="index.php?pages=test-drive&id=<?php echo $data['id_test_drive']; ?>" class="text-muted" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Delete" onclick="return confirm('Apakah Anda yakin ingin menghapus Form tersebut?')"><i
										class="mdi mdi-close font-18"></i></a>
							</td>
                        </tr>
                        <?php $no++; ?>
						<?php endwhile; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>