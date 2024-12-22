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

    .row {
        margin-left: 0;
        margin-right: 0;
        max-width: 1300px;
    }

    .row>[class^="col-sm-4"] {
        padding-left: 0;
        padding-right: 0;
        max-width: 500px;
    }

    .row>[class^="col-sm-8"] {
        padding-right: 100px;
        max-width: 700px;
    }

    a{
        font-weight: bold;
    }

    p{
        font-weight: bold;
    }

</style>

<div class="banner mb-3">
    <div class="container-fluid img">
        <div class="container-fluid box">
            <h3>ABOUT US</h3>
            <br>
            <p>Home > <a href="#">About Us</a></p>
        </div>
    </div>
</div>

<div style="background-color: #FCEBD0" class="container rounded pt-4 pb-4">
    <div class="row no-gutter">
    <div class="col-sm-8 text-justify">
            <h4 style="color: #BA9F38;">ABOUT US MEWAH SPORT</h4>
            
            <p><strong>Mewah Sport</strong> </p>
            <p>pemimpin dalam industri otomotif, khususnya dalam segmen mobil sport mewah. Kami berkomitmen untuk menghadirkan pengalaman berkendara yang tak tertandingi melalui inovasi, desain elegan, dan performa tinggi. Didirikan pada tahun 2005, Mewah Sport telah berkembang menjadi merek global yang diakui dan dihormati di seluruh dunia.</p>
            
            <h5>Misi Kami</h5>
            <p>Misi kami adalah menyediakan kendaraan yang tidak hanya memenuhi kebutuhan transportasi, tetapi juga memberikan kebanggaan dan kegembiraan kepada pemiliknya. Kami percaya bahwa setiap mobil yang kami buat adalah karya seni yang dirancang dengan presisi dan didukung oleh teknologi mutakhir.</p>
            
            <h5>Visi Kami</h5>
            <p>Visi kami adalah menjadi simbol keunggulan dalam dunia otomotif. Kami berusaha untuk terus berinovasi dan menetapkan standar baru dalam hal desain, teknologi, dan keberlanjutan lingkungan.</p>
            
            <h5>Nilai-Nilai Kami</h5>
            <ul>
                <li><strong>Inovasi:</strong> Kami selalu mencari cara baru untuk meningkatkan kinerja dan efisiensi mobil kami<br></li>
                <li><strong>Kualitas:</strong> Setiap detail, dari bahan hingga proses manufaktur, diawasi dengan ketat untuk memastikan produk terbaik.<br></li>
                <li><strong>Kepuasan Pelanggan:</strong> Kami percaya bahwa pelanggan adalah inti dari semua yang kami lakukan. Kami berusaha untuk memberikan layanan terbaik dan membangun hubungan jangka panjang dengan pelanggan kami.<br></li>
                <li> <strong>Keberlanjutan:</strong> Kami berkomitmen untuk mengurangi jejak karbon kami dan berinvestasi dalam teknologi ramah lingkungan.</p></li>
            </ul>

            <h5>Produk Kami</h5>
            <p>Mewah Sport menawarkan berbagai model mobil sport yang dirancang untuk memenuhi berbagai selera dan kebutuhan. Dari mobil sport dua pintu yang elegan hingga SUV mewah berperforma tinggi, setiap kendaraan yang kami produksi adalah puncak dari inovasi dan desain.</p>
            
            <h5>Layanan Kami</h5>
            <p>Kami tidak hanya menjual mobil, tetapi juga menyediakan berbagai layanan untuk memastikan pelanggan kami mendapatkan pengalaman terbaik. Layanan kami meliputi:</p>
            <ul>
                <li>Pembiayaan: Opsi pembiayaan fleksibel yang memudahkan Anda memiliki mobil impian Anda.</li>
                <li>Test Drive: Pengalaman test drive untuk membantu Anda merasakan keunggulan mobil kami sebelum membeli.</li>
            </ul>
            
            <h5>Komitmen Kami</h5>
            <p>Kami di Mewah Sport berkomitmen untuk memberikan pengalaman otomotif terbaik yang dapat Anda bayangkan. Dengan tim profesional yang berpengalaman dan berdedikasi, kami siap untuk melayani Anda dan memastikan bahwa setiap perjalanan dengan mobil Mewah Sport adalah pengalaman yang luar biasa.</p>
            
            <h5>Hubungi Kami</h5>
            <p>Jika Anda ingin mengetahui lebih lanjut tentang produk dan layanan kami, jangan ragu untuk menghubungi kami atau mengunjungi showroom kami. Kami dengan senang hati akan membantu Anda menemukan mobil sport mewah yang sempurna untuk Anda.</p>
            <p><strong>Alamat Showroom:</strong><br>
            Jl. Otomotif No. 123, Jakarta, Indonesia</p>
            <p><strong>Telepon:</strong><br>
            +62 123 4567 890</p>
            <p><strong>Email:</strong><br>
            info@mewahsport.com</p>
            <p><strong>Website:</strong><br>
            www.mewahsport.com</p>
        </div>
        <div class="col-sm-4" style="max-width: 400px;" >
            <img src="assets/img/car_aboutus.jpg" height="300px" width="100%">
        </div>
    </div>
</div>
<?php require "footer.php"; ?>