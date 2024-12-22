<?php require "header.php"; ?>

<style>
    .banner .img {
        width: 100%;
        height: 250px;
        background-image: url('assets/img/index/2.png');
        padding: 0px;
        margin: 0px;
    }

    .img .box {
        height: 250px;
        background-color: rgb(41, 41, 41, 0.7);
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        color: white;
        padding-top: 70px;
    }

    .box a {
        color: #0066FF;
    }

    .box a:hover {
        text-decoration: none;
        color: rgb(6, 87, 209);
    }
</style>
<div class="banner mb-3">
    <div class="container-fluid img">
        <div class="container-fluid box">
            <h3>Nota</h3>
            <p>Home ><a href="#"> Nota Pembelian</a></p>
        </div>
    </div>
</div>
<div class="containt">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card m-b-20">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="invoice-title">
                                    <h4 class="pull-right font-16"><strong>ID Order : <?php echo $_GET['id']; ?>
                                        </strong></h4>
                                    <h3 class="m-t-0">
                                        <strong> Mewah Sport</strong>
                                    </h3>
                                </div>
                                <hr>
                                <div class="row">
                                    <?php
                                        $id = $_GET['id'];
                                        $query ="SELECT * FROM tbl_order WHERE id_order='$id'";
                                        $result = mysqli_query($db,$query);
                                        $data = mysqli_fetch_assoc($result);
                                        $tgl = $data['tgl_order'];
                                    ?>
                                    <div class="col-6">
                                        <address>
                                            <strong>Penerima:</strong><br>
                                            <?php echo $data['nm_penerima'];?> <br>
                                            <?php echo $data['telp'];?>
                                        </address>
                                    </div>
                                    <div class="col-6 text-right">
                                        <address>
                                            <strong>Alamat Pengiriman:</strong><br>
                                            <?php echo $data['alamat_pengiriman'];?>
                                        </address>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6 m-t-30">
                                        <address>
                                            <strong>Tanggal Order:</strong><br>
                                            <?php echo date("F d, Y", strtotime($tgl)); ?>
                                        </address>
                                    </div>
                                    <div class="col-6 m-t-30 text-right">
                                        <address>
                                            <strong>Total Berat</strong><br>
                                            <?php
                                                $id = $_GET['id'];
                                                $berattotal=0;
                                                $query ="SELECT * FROM tbl_detail_order WHERE id_order='$id'";
                                                $result = mysqli_query($db,$query);
                                                while ($data = mysqli_fetch_assoc($result)) {
                                                    $berattotal+=$data['subberat'];
                                                };
                                                echo $berattotal;
                                            ?> Kg
                                        </address>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="panel panel-default">
                                    <div class="pt-3">
                                        <h3 class="panel-title font-20">Rincian Order</strong>
                                        </h3>
                                    </div>
                                    <div class="">
                                        <div class="table">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Gambar</th>
                                                        <th>Nama Produk</th>
                                                        <th>Harga</th>
                                                        <th class="text-center">Jumlah</th>
                                                        <th class="text-right">Subharga</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                        $id_order=$_GET['id'];
                                                        $order = "SELECT ongkir,total_order FROM tbl_order WHERE id_order='$id_order'";
                                                        $res = mysqli_query($db,$order);
                                                        $dta = mysqli_fetch_assoc($res);

                                                        $subtotal = 0;
                                                        $diskon = 0; // Initialize the discount
                                                        $qproduk="SELECT * FROM tbl_detail_order d JOIN tbl_produk p ON d.id_produk=p.id_produk WHERE id_order = '$id_order'";
                                                        $rproduk=mysqli_query($db,$qproduk);
                                                        while ($produk = mysqli_fetch_assoc($rproduk)) {
                                                            $subharga = $produk['subharga'];
                                                            $diskon_persen = 20; // Assuming a 20% discount
                                                            $diskon_item = ($subharga * $diskon_persen) / 100;
                                                            $diskon += $diskon_item;
                                                            $subtotal += $subharga;
                                                    ?>
                                                    <tr>
                                                        <td class="product-list-img">
                                                            <?php if($produk['gambar']!=null):?>
                                                            <img width="40"
                                                                src="admin/assets/images/foto_produk/<?php echo $produk['gambar']?>"
                                                                class="img-fluid" alt="tbl">
                                                            <?php endif;?>
                                                        </td>
                                                        <td><?php echo $produk['nm_produk']; ?></td>
                                                        <td>Rp. <?php echo number_format($produk['harga']);?></td>
                                                        <td class="text-center"><?php echo $produk['jml_order'];?> </td>
                                                        <td class="text-right">Rp.
                                                            <?php echo number_format($subharga);?></td>
                                                    </tr>
                                                    <?php 
                                                        } 
                                                    ?>
                                                    <tr>
                                                        <td colspan="3"></td>
                                                        <th class=" text-center">
                                                            Subtotal
                                                            </th>
                                                        <td class="text-right">Rp.<?php echo number_format($subtotal);?>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"></td>
                                                        <th class=" text-center">
                                                            Diskon
                                                            </th>
                                                        <td class="text-right">Rp.<?php echo number_format($diskon);?>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" style="border-top: none;"></td>
                                                        <th class="text-center" style="border-top: none;">Ongkir</th>
                                                        <td class="text-right" style="border-top: none;">Rp.<?php echo number_format($dta['ongkir']);?></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" style="border-top: none;"></td>
                                                        <th class="text-center" style="border-top: none;">Total</th>
                                                        <td class="text-right" style="border-top: none;">
                                                            <h4>Rp.<?php echo number_format($dta['total_order']);?></h4>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="d-print-none">
                                            <div class="pull-right">
                                                <a href="javascript:window.print()"
                                                    class="btn btn-success waves-effect waves-light"><i
                                                        class="fa fa-print"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div> <!-- end row -->

                    </div>
                </div>
            </div> <!-- end col -->
        </div> <!-- end row -->
    </div>
</div>
<br><br>
<?php require "footer.php"; ?>
