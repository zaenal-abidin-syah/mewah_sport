<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-rKFs2TJXkA7Iq+adfyGzoNXdJbXTCSTjQ8+fr/Xz5kWthbs/4rhhBZ8K92MU3Z+1" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <!-- <link href="https://fonts.googleapis.com/css?family=Inter:100,200,300,regular,500,600,700,800,900" rel="stylesheet" /> -->
</head>

<body  style="background-color:#6DB9EF;">
    <br><br>
    <div class="container mt-5">
        <div class="row" style="border-radius: 25px">
            <div class="col-md-6 offset-md-3" style="border-radius: 25px">
                <div class="card" style="border-radius: 25px">
                    <div class="card-header" style="background-color:#161A30; border-radius: 25px;" >
                        <br>
                        <div class="text-center">
                            <i style="color:white" class="fas fa-user-circle fa-10x"></i>
                        </div><br>
                        <h3 align="center" style="color:white" >User Profile</h3>
                    </div>
                    <div class="card-body">
                        <?php
                        session_start();
                        include 'koneksi.php';
                        $id_user = $_SESSION["pelanggan"];

                        $query = "SELECT * FROM tbl_pelanggan WHERE id_pelanggan = '$id_user'";
                        $result = mysqli_query($db, $query);

                        while ($data = mysqli_fetch_assoc($result)) {
                            // Display user information in a table


                            echo '<table class="table"';
                            echo '<tr><br><th>ID User</th><td>' . htmlspecialchars( $data['id_pelanggan']) . '</td></tr>';
                            echo '<tr><th>Nama Lengkap</th><td>' . $data['nama_lengkap'] . '</td></tr>';
                            echo '<tr><th>Username</th><td>' . $data['username'] . '</td></tr>';
                            echo '<tr><th>Email</th><td>' . $data['email'] . '</td></tr>';
                            echo '<tr><th>No. Telepon</th><td>' . $data['no_telp'] . '</td></tr>';
                            echo '<tr><th>Status</th><td>' . $data['level'] . '</td></tr>';
                            echo '<tr><th><a href="homeDT.php"><button class="btn btn-danger">Batal</button></a>&nbsp;<a href="edit_user.php?id=' . $data["id_user"] . '" class="btn btn-primary">Edit</a></th></tr>';
                            echo '<tr><th></th><td></td></tr>';
                            echo '</table>';
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
