<?php
include 'koneksi.php';

// $id_pelanggan = 2;

$id = $_GET['id'];
$query ="SELECT * FROM tbl_pelanggan WHERE id_pelanggan='$id'";
$result = mysqli_query($db,$query);
$data = mysqli_fetch_assoc($result);

// $update_success = false;



if (isset($_POST["pelanggan"])) {
    $nm_pelanggan = $_POST['nm_pelanggan'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    $sql = "UPDATE tbl_pelanggan SET nm_pelanggan = '$nm_pelanggan', username = '$username', email = '$email', password = '$password' WHERE id_pelanggan = '$id'";
    $resultEdit = mysqli_query($db, $sql);
    
    echo "<script>alert('Data Anda sudah di ubah')</script>";
    echo "<script>location='index.php';</script>";

    // }else{

    // echo '<h1> gagal</h1>';
}


?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Profil Pengguna</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            color: #1D3B28;
            background: #1D3B28;
        }
        .profile-card {
            margin: 50px auto;
            padding: 30px;
            max-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            background-color: #FCEBD0; 
            color: #3A3A3C; 
        }
        .profile-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .profile-card h3 {
            margin-bottom: 20px;
            color: #BA9F38;
            font-weight: bold;
        }
        .profile-card p {
            margin-bottom: 10px;
            color: #BA9F38; 
        }
        .profile-card .label {
            font-weight: bold;
            color: #BA9F38; 
        }
        .form-group {
            text-align: left;
        }
        .btn-custom {
            background-color: #BA9F38;
            color: #FFFFFF;
            border: none;
        }
        .btn-custom:hover {
            background-color: #9A8B47;
        }
        .cancel-button{
            background: transparent !important;
            /* border-color: #BA9F38 !important; */
            border: 1px solid #BA9F38 !important;
        }
        .cancel-button:hover{
            background-color: #B1BACA !important;
        }
    </style>
</head>
<body>
            <div class="container mt-5">
                <div class="profile-card">
                    <div class="card-header">
                        <h3>Edit Profil Pengguna</h3>
                        <form method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="nm_pelanggan">Nama</label>
                                <input type="text" class="form-control" id="nm_pelanggan" name="nm_pelanggan" value="<?php echo $data['nm_pelanggan']; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="username" value="<?php echo $data['username']; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" value="<?php echo $data['email']; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password" value="<?php echo $data['password']; ?>" required>
                            </div>
                            <button type="submit" class="btn btn-custom" name="pelanggan">Update</button>
                            <a href="profile.php?id=<?php echo $data['id_pelanggan']?>" class="btn btn-secondary cancel-button">Batal</a>
                        </form>
                    </div>
                </div>

            </div>
</body>
</html>
