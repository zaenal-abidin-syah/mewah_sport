<?php
include 'koneksi.php'; 

$id = $_GET['id'];
$query ="SELECT * FROM tbl_pelanggan WHERE id_pelanggan='$id'";
$result = mysqli_query($db,$query);
$data = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Profil Pengguna</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1D3B28; 
            color: #3A3A3C; 
        }
        .profile-card {
            margin: 50px auto;
            /* padding: 30px; */
            padding: 0;
            padding-bottom: 30px;
            max-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            background-color: #FCEBD0; 
            color: #3A3A3C;
            box-sizing: border-box; 
        }
        .profile-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .profile-card h2 {
            margin-bottom: 20px;
            color: white; 
        }
        .profile-card p {
            margin-bottom: 10px;
            color: #1D3B28; 
            size: 14px;
            margin-left: 10px;
        }
        .profile-card .label {
            font-weight: bold;
            /* size: 14px; */
            color: #1D3B28; 
        }
        form{
            padding: 40px;
            
        }
        .form-group {
            text-align: left;
            display: flex;
            justify-content: space-between;
        }
        .btn-custom {
            background-color: #B09A51;
            color: #FFFFFF;
            border: none;
        }
        .btn-custom:hover {
            background-color: #9A8B47;
        }
        .head-card{
            padding: 30px;
            background-color: #BA9F38;
            border-radius: 10px;
            /* margin: 0; */
        }
        .back-button{
            background: #FCEBD0 !important;
            color: #BA9F38;
            /* border-color: #BA9F38 !important; */
            border: 1px solid #BA9F38 !important;
        }
        .back-button:hover{
            background-color: #B1BACA !important;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="profile-card">
        <div class="head-card">
            <img src="https://via.placeholder.com/100" alt="Profile Picture">
            <h2>User Profile</h2>
            <hr>
        </div>
        <form>
            <div class="form-group">
                <label class="label text-lg">Nama Lengkap:</label>
                <p><?php echo $data['nm_pelanggan']?></p>
            </div>
            <div class="form-group">
                <label class="label text-lg">Username:</label>
                <p><?php echo $data['username']?></p>
            </div>
            <div class="form-group">
                <label class="label text-lg">Email:</label>
                <p><?php echo $data['email']?></p>
            </div>
            <div class="form-group">
                <label class="label text-lg">Password:</label>
                <p><?php echo $data['password']?></p>
            </div> 
        </form>
                <a href="editProfile.php?id=<?php echo $data['id_pelanggan']?>" class="btn btn-custom">Edit</a>
                <a href="index.php" class="btn btn-secondary back-button">Kembali</a> 
    </div>       
</div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
