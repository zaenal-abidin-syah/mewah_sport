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


    .atas .card {
        padding: 1px;
        border: 1px solid silver;
    }

    .atas .card:hover {
        border: none;
    }

    .item:hover {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5), 0 6px 20px 0 rgba(0, 0, 0, 0.4);
    }

    .card{
        background-color: #FCEBD0;
        height: 300px;
        width: 210px;
    }

    h5{
        color: #BA9F38;
        font-weight: bold;
        
    }

    a{
        color: white;
        font-weight: bold;
    }

    img{
        border-radius: 20px ;
    }

    .btn{
        color: white;
        font-weight: bold;
    }

    h6{
        color: #BA9F38;
        font-weight: bold;
    }

    strong{
        color: white;
    }
    .text-skyblue{
        /* color: #B1BACA; */
        color:#BA9F38;
    }

</style>

<div class="banner mb-5">
    <div class="container-fluid img">
        <div class="container-fluid box">
            <h3>SHOP</h3>
            <br>
            <p>Home > <a href="shop.php">Shop</a></p>
        </div>
    </div>
</div>
<div class="container">
    <?php 
    if (isset($_GET['kategori'])) {
        $kategori = $_GET['kategori'];
        $query = "SELECT * FROM tbl_produk WHERE id_kategori='$kategori'";
    }
    elseif(isset($GET['merek'])) {
        $merek = $_GET['merek'];
        $query = "SELECT * FROM tbl_produk WHERE merek='$merek'";
    }
    elseif (isset($_GET['select'])) {
        $cari = $_GET['select'];
        $query="SELECT * FROM tbl_produk WHERE nm_produk LIKE '%".$cari."%'ORDER BY id_produk asc";
    }
    else {
        $query = "SELECT * FROM tbl_produk p JOIN tbl_kat_produk k ON p.id_kategori=k.id_kategori ORDER BY id_produk asc";
    }
    ?>
    <div class="row">
        <div class="col-md-12 col-lg-4 col-xl-3">
            <div class="card pb-3" style="height:280px;" >
                <div class="card-body" style="padding-bottom: 3px;">
                    <form class="form-group">
                        <h5>Cari:</h5>
                        <input class="form-control" width="100%" type="search" name="select" placeholder="Search">
                    </form>

                    <!-- <form class="form-group">
                        <h5>Filter Merek:</h5>
                        <select name="merek" id="merek" class="form-control" style="width: 150px;">
                            <option value="">Pilih Merek</option>

                            <?php
                                if(isset($GET['merek'])) {
                                    $merek = $_GET['merek'];
                                    $query = "SELECT * FROM tbl_produk WHERE merek='$merek'";
                                }
                                $qbrand = "SELECT DISTINCT merek FROM tbl_produk";
                                $resbrand = mysqli_query($db, $qbrand);
                                while ($merek = mysqli_fetch_assoc($resbrand)) {
                                    echo '<option value="'.$merek['merek'].'">'.$merek['merek'].'</option>';
                                    // echo '<meta http-equiv="refresh" content="1;url=shop.php?merek='.$merek["merek"].'">';
                                }
                            ?>
                            <option value="<?php echo $merek['merek']?>"><a href="shop.php?kategori=<?php echo $merek['merek']?>" name="merek" ><?php echo $merek['merek']?></a></option>
                        </select>
                        
                        <a href="shop.php?kategori=<?php echo $merek['merek']?>" class="btn btn-primary btn-sm" id="submit" name="merek" >Pilih</a>
                    </form>

                    <form class="form-group">

                        <h5>Filter Negara:</h5>
                        <select name="negara" class="form-control">
                            <option value="">Pilih Negara</option>

                            <?php
                            $qcountry = "SELECT DISTINCT negara FROM tbl_produk";
                            $rescountry = mysqli_query($db, $qcountry);
                            while ($dproduk= mysqli_fetch_assoc($rescountry)) {
                                echo '<option value="'.$dproduk['negara'].'">'.$dproduk['negara'].'</option>';
                            }
                            ?>

                        </select>
                        <button type="submit" class="btn btn-primary btn-block">Filter</button>
                    </form> -->

                    <!-- <hr class="text-center" width="80%"> -->
                    
                    <h5>Kategori:</h5>
                    <style>
                        .hide {
                            list-style: none;
                        }
                    </style>
                    <?php
                        $qkat = "SELECT * FROM tbl_kat_produk";
                        $reskat = mysqli_query($db, $qkat);
                        while ($dat = mysqli_fetch_assoc($reskat)) {
                    ?>
                    <a href="shop.php?kategori=<?php echo $dat['id_kategori'] ?>" style="text-decoration: none; color: #1D3B28;"
                        class="text-skyblue ml-3" name="kategori"><?php echo $dat['nm_kategori'] ?></a><br>
                    <?php } ?>
                </div>
            </div>
        </div>

        <div class="col-md-12 col-lg-8 col-xl-9">
            <div class="row">
                <?php
                $result=mysqli_query($db,$query);
                while ($produk = mysqli_fetch_assoc($result)) {
                    
                    $diskon_persen = 20;
                    $diskon = ($produk['harga'] * $diskon_persen) / 100;
                    $subdiskon = $produk['harga'] - $diskon;
                ?>

                <div class="mb-0 p-1 col-md-6 col-lg-4 col-xl-3">
                    <div class="item card">
                        <div class="thumnail">
                            <img src="admin/assets/images/foto_produk/<?php echo $produk['gambar'];?>" alt="img"
                                class="card-img-top pt-2">
                        </div>
                        <div class="card-body" style="padding: 5px;"><br>
                            <strong class="text-skyblue" style="color: #1D3B28;"><?php echo $produk['nm_produk']; ?></strong><br><br>
                            <h6 style="color:grey;">Rp. <s><?php echo number_format($produk['harga']); ?></s> -20%</h6>
                            <h5 class="#">Rp. <?php echo number_format($subdiskon); ?></h5>
                            <a href="detail-produk.php?id=<?php echo $produk['id_produk']; ?>"
                                class="btn btn-primary btn-sm btn-block">Lihat Produk</a>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <br>
        </div>
    </div>
</div>

<?php require "footer.php"; ?>