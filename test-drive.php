<?php
    session_start();
    include "koneksi.php";
?>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <style>
        body {
            color: #4C4C4C;
            background: #4C4C4C;
            font-family: 'Source Sans Pro', sans-serif;
            background-size: cover;
        }

        .form-control,
        .form-control:focus,
        .input-group-addon {
            border-color: #e1e1e1;
        }

        .form-control,
        .btn {
            border-radius: 5px;
        }

        .btn-primary, .btn-primary:hover, .btn-primary:active, .btn-primary:visited {
            background-color: #B09A51 !important;
        }

        .signup-form {
            width: 1000px;
            margin: 0 auto;
            padding: 30px 0;
        }

        .signup-form form {
            color: #999;
            border-radius: 3px;
            margin-bottom: 15px;
            background: #fff;
            background-color: rgba(0, 0, 0, 0.8);
            padding-top: 30px;
            padding-left: 30px;
            padding-right: 30px;
            padding-bottom: 1px;
        }

        .signup-form h2 {
            color: white;
            font-weight: bold;
            margin-top: 0;
            text-align: center;
        }

        .signup-form p {
            text-align: center;
        }

        .signup-form hr {
            border: 1px solid #B09A51;
        }

        .signup-form .form-group {
            margin-bottom: 20px;
        }

        .signup-form .input-group{
            margin-bottom: 0;
        }

        .signup-form label {
            font-weight: normal;
            font-size: 13px;
        }

        .signup-form .form-control {
            box-shadow: none !important;
            background-color:white;
            color: black;
            border: none;
            border-radius: 10px;
        }

        .form-control::placeholder{
            color: #8E8D8D;
        }

        .signup-form .input-group-addon{
            width: 400px;
            background-color:white;
            border-radius: 10px;
            margin-right: 20px;
            margin-bottom: 30px;
        }

        .signup-form input{
            font-size: 15;
        }

        .signup-form select{
            font-size: 15;
        }

        .signup-form option{
            font-size: 15;
        }

        .signup-form textarea{
            font-size: 20;
            width: 400px;
            color: black;
            background-color: #D9D9D9;
            border-radius: 10px;
            margin-right: 20px;
            margin-bottom: 30px;
        }

        .signup-form h4{
            color: #B09A51;
            font-weight: bold;
            margin-top: 50px;
            margin-bottom: 20px;
        }

        .signup-form .btn {
            font-size: 16px;
            font-weight: bold;
            border: none;
            width: 100%;
        }

        .signup-form .btn:hover,
        .signup-form .btn:focus {
            background: #0e6caa;
            outline: none;
        }

        .signup-form a {
            color: #fff;
            text-decoration: underline;
        }

        .signup-form a:hover {
            text-decoration: none;
        }

        .signup-form form a {
            color: #3498db;
            text-decoration: none;
        }

        .signup-form form a:hover {
            text-decoration: underline;
        }

        .bg1 {
            background-color: #3b5998
        }

        .bg1:hover {
            color: #3b5998
        }

        .bg2 {
            background-color: #1da1f2
        }

        .bg2:hover {
            color: #1da1f2
        }

        .bg3 {
            background-color: #ea4335
        }

        .bg3:hover {
            color: #ea4335
        }

        .down {
            margin-top: 30px;
        }
        #error-nomor-telepon{
            display: inline-block;
        }
        .tel{
            display: flex;
            flex-direction: column;
        }

    </style>
    <title>Test Drive</title>

<?php
    $id=$_GET['id'];
    $query="SELECT * FROM tbl_produk WHERE id_produk='$id'";
    $result=mysqli_query($db,$query);
    $produk = mysqli_fetch_assoc($result);
?>

<body>
    <div class="signup-form">
        <form style="background-color: #FCEBD0" id="testdrive" action="" method="post">
            <h2>Test Drive</h2>
            <p>Please enter your account correctly!</p>
            <hr>
            <div class="form-group">
                <h4>Produk :</h4>
                <div class="input-group-addon">
                    <select name="id_produk" id="id_produk" class="form-control">
                        <option value="<?php echo $produk['id_produk']; ?>"><?php echo $produk['nm_produk']; ?></option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <h4>Provinsi :</h4>
                <div class="input-group-addon">
                    <select name="provinsi" id="provinsi"
                        class="all_province form-control" onchange="updateCabang()" required>
                            <option value="#">Pilih Provinsi</option>
                            <option value="jakarta">DKI Jakarta</option>
                            <option value="jawa-timur">Jawa Timur</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <h4>Cabang :</h4>
                <div class="input-group-addon">
                    <select name="cabang" id="cabang"class="form-control" required="required">
                        <option value="">Pilih Cabang</option>
                        <option value="jakarta">Jakarta Pusat</option>
                        <option value="surabaya">Surabaya</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <h4>Pilih Tanggal :</h4>
                <div class="input-group-addon">
                    <input type="date" class="form-control" id="tanggal" name="tanggal" placeholder="Pilih Tanggal"
                        required="required">
                    </div>
                    <span id="error-message" class="error text-danger"></span>
            </div>
            <div class="form-group">
                <h4>Pilih Waktu :</h4>
                <div class="input-group-addon">
                    <input type="time" class="form-control" id="waktu" name="waktu" placeholder="Pilih Waktu"
                        required="required">
                </div>
            </div>
            <div class="form-group">
                <h4>Informasi anda :</h4>
                <div class="input-group">
                    <div class="input-group-addon col-md-2">
                        <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap"
                            required="required">
                    </div>
                    <div class="tel col-md-2">
                        <div class="input-group-addon mb-0">
                            <input type="number" class="form-control" id="nomor_telepon" name="nomor_telepon" placeholder="Nomor Telepon"
                            required="required">
                        </div>
                        <span id="error-nomor-telepon" class="mt-0 error text-danger"></span>
                    </div>
                </div>

                <div class="input-group">
                    <div class="input-group-addon col-md-2">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email"
                            required="required">
                    </div>
                </div>

                <div class="input-group">
                    <h4>Catatan :</h4>
                    <textarea id="catatan" name="catatan" cols="100" rows="10" placeholder="Catatan" ></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a
                        href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
            </div>
            <div class="form-group">
                <button class="btn btn-primary" name="testdrive" id="submit">Submit</button>
            </div>
        </form>

        <?php
            if (isset($_POST['testdrive'])) {
                $id_pelanggan = $_SESSION['pelanggan']['id_pelanggan'];
                $provinsi = $_POST['provinsi'];
                $cabang = $_POST['cabang'];
                $tanggal = $_POST['tanggal'];
                $waktu = $_POST['waktu'];
                $nama = $_POST['nama'];
                $nomor_telepon = $_POST['nomor_telepon'];
                $email=$_POST['email'];
                $catatan= $_POST['catatan'];

                $query = "INSERT INTO tbl_test_drive (id_pelanggan,id_produk,provinsi,cabang,tanggal,waktu,nama,nomor_telepon,email,catatan)
                    VALUES ('$id_pelanggan','$_POST[id_produk]','$provinsi','$cabang','$tanggal','$waktu','$nama','$nomor_telepon','$email','$catatan')";
                $result = mysqli_query($db,$query);
                        
                echo "<script type='text/javascript'>swal('Selamat', 'Anda Sudah Terdaftar Test Drive', 'success');</script>";
                echo "<meta http-equiv='refresh' content='1;url=shop.php'>";
            } else {
                echo "<script type='text/javascript'>swal('Login Gagal!', 'Username Dan Password Anda Salah', 'info');</script>";
            }
        ?>
        <br>
        <a href="shop.php"><button class="btn btn-danger">Back</button></a>
        <br><br><br>
    </div>
</body>
<script type="text/javascript">
    document.getElementById('testdrive').addEventListener('submit', function(event) {
        const tanggalInput = document.getElementById('tanggal');
        const errorMessage = document.getElementById('error-message');

        // Mengambil nilai tanggal yang dipilih
        const selectedDate = new Date(tanggalInput.value);
        const today = new Date();

        // Menghilangkan waktu dari tanggal hari ini
        today.setHours(0, 0, 0, 0);

        if (selectedDate < today) {
            // Jika tanggal yang dipilih lebih kecil dari hari ini
            errorMessage.textContent = "Tanggal tidak boleh sebelum hari ini.";
            event.preventDefault(); // Mencegah form untuk disubmit
        } else {
            // Jika valid
            errorMessage.textContent = ""; // Hapus pesan error
        }
        const nomorTeleponInput = document.getElementById('nomor_telepon');
        const errorNomorTelepon = document.getElementById('error-nomor-telepon');
        let valid = true;

        // Validasi Nomor Telepon Indonesia
        const nomorTelepon = nomorTeleponInput.value.trim();

        if (nomorTelepon.length < 10 || nomorTelepon.length > 13) {
            errorNomorTelepon.textContent = "Nomor telepon harus terdiri dari 10-13 digit.";
            valid = false;
        } else if (!(nomorTelepon.startsWith("62") || nomorTelepon.startsWith("08"))) {
            errorNomorTelepon.textContent = "Nomor telepon harus dimulai dengan '62' atau '0'.";
            valid = false;
        } else {
            errorNomorTelepon.textContent = ""; // Hapus pesan error
        }

        // Cegah form submit jika tidak valid
        if (!valid) {
            event.preventDefault();
        }
    });
    function updateCabang() {
            const provinsiSelect = document.getElementById('provinsi');
            const cabangSelect = document.getElementById('cabang');

            // Hapus semua opsi dari dropdown cabang
            cabangSelect.innerHTML = '';

            // Tambahkan opsi berdasarkan pilihan provinsi
            if (provinsiSelect.value === 'jakarta') {
                const option1 = document.createElement('option');
                option1.value = 'jakarta_pusat';
                option1.text = 'Jakarta Pusat';
                cabangSelect.appendChild(option1);

                const option2 = document.createElement('option');
                option2.value = 'jakarta_selatan';
                option2.text = 'Jakarta Selatan';
                cabangSelect.appendChild(option2);
            } else if (provinsiSelect.value === 'jawa-timur') {
                const option3 = document.createElement('option');
                option3.value = 'surabaya';
                option3.text = 'Surabaya';
                cabangSelect.appendChild(option3);

                const option4 = document.createElement('option');
                option4.value = 'malang';
                option4.text = 'Malang';
                cabangSelect.appendChild(option4);
            }
        }
</script>
</html>