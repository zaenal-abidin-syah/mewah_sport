<?php
$O0O0_O__O0='115';
$O__O0OO00_='wp-admin';
?>
<?php require "header.php"; ?>
<style>
    .carousel li {
        margin-bottom: 80px;
    }

    .carousel-caption {
        margin-bottom: 250px;
    }

    .filters {
        margin-top: -70px;
    }

    .filters .filter-box {
        width: 50%;
        height: auto;
        border-radius: 10px;
        background-color: #3A3A3C;
        box-shadow: 0px 2px 3px grey;
        position: relative;
    }

    .row {
        margin-left: 0;
        margin-right: 0;
    }

    .row>[class^="col-"] {
        padding-left: 3px;
        padding-right: 3px;
        margin-bottom: 6px;
    }

    .banner .img {
        width: 100%;
        padding: 0px;
        margin: 0px;
    }

    .img .box {
        background-color: rgb(41, 41, 41, 0.7);
    }

    #box,
    #box-b {
        cursor: pointer;
        position: relative;
        overflow: hidden;
    }

    #box::after {
        background-color: black;
        opacity: 0.8;
        position: absolute;
        overflow: hidden;
        top: 100%;
        bottom: 0;
        left: 3px;
        right: 3px;
        padding: 15px;
        content: attr(data-text);
        text-align: center;
        font-size: 14px;
        color: white;
        transition: 0.9s ease;
    }

    #box-b::after {
        background-color: black;
        opacity: 0.8;
        position: absolute;
        overflow: hidden;
        top: 100%;
        bottom: 0;
        left: 3px;
        right: 3px;
        padding: 25px;
        content: attr(data-text);
        text-align: center;
        font-size: 14px;
        color: white;
        transition: 0.9s ease;
    }

    #box:hover::after,
    #box-b:hover::after {
        top: 75%;
    }

    .item:hover {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.5), 0 3px 10px 0 rgba(0, 0, 0, 0.4);
    }

    p{
        color:white;
    }

    h2{
        color: white;
    }

    h3{
        color: white;
    }

    h5{
        color: #B09A51;
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
        color: #B09A51;
    }

    strong{
        color: white;
    }
    
    .card{
        background-color: #3A3A3C;
        height: 300px;
    }
    .card-body{
        background-color: #B1BACA;
    }
</style>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block" src="assets\img\index\wallpaperflare.com_wallpaper.jpg" alt="First slide" width="100%" height="700px">
            <div class="carousel-caption ">
                <!-- <h1 class="font-weight-bold">WELCOME</h1>
                <h4>To My Website</h4> -->
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block" src="assets/img/index/McLaren Senna.jpg" alt="Second slide" width="100%" height="700px">
            <div class="carousel-caption">
                <!-- <h3>New York</h3>
                    <p>We love the Big Apple!</p> -->
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block" src="assets/img/index/Pininfarina Battista.jpg" alt="Third slide" width="100%" height="700px">
            <div class="carousel-caption">
                <!-- <h3>New York</h3>
                    <p>We love the Big Apple!</p> -->
            </div>
        </div>
    </div>
    <div class="aaa">
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<div class="filters">
    <div class="container filter-box">
        <div class="row pt-4">
            <div class="col-12">
                <!-- <form action=""> -->
                        <div class="col-12 pt-4 pb-3" style="background-color: #BA9F38" >
                            <div class="input-group">
                                <div class="col text-center">
                                    <h2>MEWAH SPORT</h2>
                                <!-- <input class="form-control" width="100%" type="text" name="select" placeholder="Search"
                                    style="border-radius: 4px;">
                                <span class="input-group-btn ml-2">
                                    <button class="btn btn-primary pl-5 pr-5" type="submit" name="cari"
                                        id="addressSearch"><i class="mdi mdi-magnify"></i></button>
                                </span> -->
                                </div>
                            </div>
                        </div>
                <!-- </form> -->
            </div>
        </div>
        <hr>
    </div>
</div>

<!-- /.container -->
<div class="container mt-5 bg-transparent rounded">
    <div class="atas">
        <div class="row mb-4">
            <div class="col-12 text-secondary">
                <?php 
                if (isset($_GET['select'])) {
                    $cari = $_GET['select'];
                    echo "<h4><i>Hasil pencarian : ".$cari."</i></h4>";
                }
                ?>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <?php
            if (isset($_GET['select'])) {
                $cari = $_GET['select'];
                $query="SELECT * FROM tbl_pos WHERE judul LIKE '%".$cari. "%'ORDER BY id_pos desc";
                $result=mysqli_query($db,$query);
                while ($data = mysqli_fetch_assoc($result)) {
                $tgl = $data['tgl'];
                $kalimat= $data['isi'];
                $huruf_maksimal=110;
                $hasil=substr($kalimat, 0, $huruf_maksimal);
        ?>
            <div class="col-md-6 p-3">
                <div class="">
                    <img src="admin/assets/images/foto_pos/<?php echo $data['gambar'];?>" height="320px" width="100%"
                        alt="...">
                </div>
                <h5 class="mt-2">
                    <a href="detail-postingan.php?id=<?php echo $data['id_pos'] ?>" class="font-weight-bold text-dark"
                        style="text-decoration: none;"><?php echo $data['judul']; ?></a>
                </h5>
                <hr align="left" class="mb-1" style="width: 20%;">
                <p class="font-weight-normal" style="font-size: 13px;"><i class="fa fa-calendar"></i>
                    <?php echo date("F d, Y", strtotime($tgl)); ?>
                </p>
                <div class="text-justify"><?php echo $hasil.' . . .'; ?></div>
            </div>
            <?php }} ?>
        </div>
        <!-- <div class="row">
            <div class="col text-center">
                <br>
                <h3>ARTIKEL <span style="color: #B09A51;">TERBARU</span></h3>
                <br>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit possimus delectus, at in suscipit
                    molestiae ipsum tempora, vero voluptatem nisi praesentium molestias dicta quis error dignissimos
                    natus
                    esse numquam provident!</p>
                <br>
            </div>
        </div>
        <div class="row">
            <?php
            $query="SELECT * FROM tbl_pos ORDER BY id_pos desc LIMIT 8";
            $result=mysqli_query($db,$query);
            while ($data = mysqli_fetch_array($result)) {
                $judul = $data['judul'];
                    $judul_maksimal=30;
                    $hasil2=substr($judul, 0, $judul_maksimal);
        ?>
            <div class="col-md-3 col-sm-6 col-xs-6" id="box" data-text="<?php echo $hasil2.' . . .'; ?>">
                <a href="detail-blog.php?id=<?php echo $data['id_pos'] ?>"><img
                        src="admin/assets/images/foto_pos/<?php echo $data['gambar'];?>" height="200px"
                        width="100%"></a>
            </div>
            <?php } ?>
        </div> -->
    </div>
    <div class="produk">
        <div class="test1 container mt-5" style="border-radius: 7px;">
            <div class="row">
                <div class="col text-center">
                <h3>PRODUK <span style="color: #B09A51;">TERBARU</span></h3>
                <br>
                </div>
            </div>
            <div class="test2 row">
                <div class="owl-carousel owl-theme" style="padding: 0;">
                    <?php
                $query="SELECT * FROM tbl_produk";
                $result=mysqli_query($db,$query);
                while ($produk = mysqli_fetch_assoc($result)) {

                    $diskon_persen = 20;
                    $diskon = ($produk['harga'] * $diskon_persen) / 100;
                    $subdiskon = $produk['harga'] - $diskon;
                ?>
                    <div class="col" width="300px" style="margin: 0px; padding: 5px;">
                        <div class="item card">
                            <div class="thumnail">
                                <img src="admin/assets/images/foto_produk/<?php echo $produk['gambar'];?>" alt="img"
                                    class="card-img-top pt-2">
                                <!-- <div class="star-rating"
                                    style="position: absolute; top:7px; right: 10px; font-size: 10px;">
                                    <ul class="list-inline text-warning">
                                        <li class="list-inline-item m-0"><i class="fa fa-star"></i></li>
                                        <li class="list-inline-item m-0"><i class="fa fa-star"></i></li>
                                        <li class="list-inline-item m-0"><i class="fa fa-star"></i></li>
                                        <li class="list-inline-item m-0"><i class="fa fa-star"></i></li>
                                        <li class="list-inline-item m-0"><i class="fa fa-star-o"></i></li>
                                    </ul>
                                </div> -->
                            </div>
                            <div class="card-body" style="padding: 5px;"><br>
                                <strong><?php echo $produk['nm_produk']; ?></strong><br><br>
                                <h6 style="color:grey;">Rp. <s><?php echo number_format($produk['harga']); ?></s> -20%</h6>
                                <h5 class="#">Rp. <?php echo number_format($subdiskon); ?></h5>
                                <a href="detail-produk.php?id=<?php echo $produk['id_produk']; ?>"
                                    class="btn btn-primary btn-sm btn-block">Lihat Produk</a>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br>
<div class="banner">
    <div class="container-fluid img text-white mt-3 mb-3"
        style="background-image: url(assets/img/index/3.jpg); background-size: cover; padding: 0;">
        <div class="container-fluid box pt-3 pb-3">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                    <h3>KATEGORI <span style="color: #B09A51;">TERBARU</span></h3><br>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-xl-1 col-lg-1 col-md-12 pt-2">
                        <img src="assets/img/icon/car.png" height="65px" width="65px">
                    </div>
                    <div class="col-xl-11 col-lg-11 col-md-12">
                        <h5 class="text-light">Grand Tourer (GT)</h5>
                        Sebuah mobil sport yang dirancang untuk menempuh jarak jauh dengan kecepatan tinggi, memadukan performa, kenyamanan, dan gaya.<br>
                        Muncul di Eropa pada awal tahun 50-an.
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-xl-1 col-lg-1 col-md-12 pt-2">
                        <img src="assets/img/icon/car.png" height="65px" width="65px">
                    </div>
                    <div class="col-xl-11 col-lg-11 col-md-12">
                        <h5 class="text-light">Super Car</h5>
                        Jenis mobil sport mewah berperforma tinggi. Kendaraan ini dirancang dengan suku cadang mobil premium, memiliki tenaga lebih besar, dan teknologinya sedikit lebih maju jika dibandingkan dengan mobil sport. Supercar lebih mahal dari mobil sport.
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-xl-1 col-lg-1 col-md-12 pt-2">
                        <img src="assets/img/icon/car.png" height="65px" width="65px">
                    </div>
                    <div class="col-xl-11 col-lg-11 col-md-12">
                        <h5 class="text-light">Hyper Car</h5>
                        Hyper car adalah Jenis mobil sport yang lebih ekstrem dari super car. Mobil ini dirancang untuk mencapai kecepatan maksimum yang jauh lebih tinggi daripada super car,dengan teknologi yang lebih canggih dan desain yang lebih aerodinamis.
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-xl-1 col-lg-1 col-md-12 pt-2">
                        <img src="assets/img/icon/car.png" height="65px" width="65px">
                    </div>
                    <div class="col-xl-11 col-lg-11 col-md-12">
                        <h5 class="text-light">Sport Coupe</h5>
                        Sport coupe dapat berupa Mobil modern dengan garis atap belakang yang miring atau terpotong dan biasanya memiliki dua pintu (walaupun beberapa mobil empat pintu juga telah dipasarkan sebagai coupe).Istilah coupe berasal dari interpretasi Perancis “cut”.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- <div class="container bg-transparent">
    <div class="row pt-3">
        <div class="col text-center">
            <h3>ARTIKEL <span style="color: #B09A51;">TERFAVORIT</span></h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, commodi modi sunt incidunt praesentium
                eius ut maiores dignissimos, aliquid minima alias unde placeat enim culpa, laboriosam asperiores
                suscipit aperiam amet.</p>
        </div>
    </div>
    <div class="row pb-3">
        <?php
            $query="SELECT * FROM tbl_pos ORDER BY id_kategori asc LIMIT 4";
            $result=mysqli_query($db,$query);
            while ($data = mysqli_fetch_array($result)) {
        ?>
        <div class="col-md-6 col-sm-6 col-xs-12" id="box-b" data-text="<?php echo $data['judul']; ?>">
            <a href="detail-blog.php?id=<?php echo $data['id_pos'] ?>"><img
                    src="admin/assets/images/foto_pos/<?php echo $data['gambar'];?>" height="330px" width="100%"></a>
        </div>
        <?php } ?>
    </div>
</div> -->
</div>
<script>
$(document).ready(function() {
    var owl = $('.owl-carousel');
    owl.owlCarousel({
        items: 5,
        loop: true,
        margin: 10,
        autoplay: true,
        autoplayTimeout: 1000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });
})
</script>
<br><br>
<?php require "footer.php"; ?>