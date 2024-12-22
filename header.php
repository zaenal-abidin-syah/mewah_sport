<?php 
    session_start();
    require "koneksi.php";

 ?>
<!DOCTYPE html>
<html lang="en" ng-app="myApp">

<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- Font -->
    <link rel="stylesheet" href="assets/css/font-awesome-4.7.0/css/font-awesome.min.css">
    <!-- Owl carausel -->
    <link rel="stylesheet" href="assets/js/owl/owl.carousel.css">
    <link rel="stylesheet" href="assets/js/owl/owl.theme.css">
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/icon/favicon.png">
    <link href="assets/css/material-design/css/materialdesignicons.css" rel="stylesheet" type="text/css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script src="assets/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="plugins/owlcarousel/owl.carousel.min.js">
    <link rel="stylesheet" href="plugins/owlcarousel/assets/owl.theme.default.min.css">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-135974525-2"></script>

    <link href="plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    
    <!-- <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-135974525-2');
    </script> -->

    <style>
        body {
            /* background-color: #4C4C4C; */
            background-color: #1D3B28;
        }

        .navbar {
            /* background-color: #3A3A3C; */
            background-color: #1D3B28;
            padding: 0px;
            margin: 0px;
            box-shadow: 0px 2px 5px grey;
        }

        .navbar-nav li {
            z-index: 1;
        }

        .navbar-nav li a {
            font-size: 17px;
            padding: 15px 30px !important;
        }

        .navbar-nav li a:hover {
            border-bottom: 3.5px solid #BA9F38;
            transition: 0.2s all;
            font-size: 15px;
            padding: 14px 32.5px !important;
        }

        .navbar-light .navbar-nav .nav-item .nav-link {
            color: white;
        }

        .nav-icon {
            color: #BA9F38;
            display: inline-block;
        }

        .btn-primary {
            color : black;
            background-color: #BA9F38;
            border-color: #BA9F38;
        }

        @media(max-width:1200px) {
            .navbar-nav li {
                font-size: 15px;
            }
        }

        @media(max-width:992px) {
            .navbar-toggler {
                margin: 10px 0px 10px 30px;
                border-color: #ff4f81;
            }

            .navbar-toggler:hover,
            .navbar-toggler:focus {
                background-color: white;
                border-color: #ff4f81;
            }

            .navbar-light {
                background-color: white;
            }

            .navbar-nav li a {
                text-align: center;
                background-color: white;
            }

            .navbar-nav li a:hover {
                background-color: #BA9F38;
            }
            .login{
                color: #1D3B28 !important;
            }

        }
/* #1D3B28 emerald */
/* skyblue #B1BACA */
/* yellow 1 #FCEBD0 */
/* yellow 2 #E1CC96 */
/* yellow 3 #BA9F38 */
    </style>

    <title>Mewah Sport</title>
</head>

<body>
    <header>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light m-0 p-0">
            <div class="container pl-3 pr-3">
                <a class=" navbar-brand" href="#">
                    <img src="assets/img/index/logo.png" width="50" height="47" alt="">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse  justify-content-center" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php">Home</a>
                        </li>
                        <!-- <li class="nav-item">
                            <a class="nav-link" href="gallery.php">Gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="blog.php">Blog</a>
                        </li> -->
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="shop.php">Shop</a>
                            <!-- <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                                Shop
                            </a>
                            <div class="dropdown-menu"">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div> -->
                        </li>
                        <li class="nav-item">
                            <?php if (isset($_SESSION["pelanggan"])){
                                echo "<a class='nav-link' href='orderan.php'>Orderan</a>";
                            }
                            ?>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.php">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.php">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-icon" href="cart.php"><i class="mdi mdi-cart" style="font-size: 17px;"></i></a>
                        </li>
                    </ul>
                </div>

                <?php if (isset($_SESSION["pelanggan"])) :
                    $id = $_SESSION['pelanggan']['id_pelanggan'];
                    $query = "SELECT * FROM tbl_pelanggan WHERE id_pelanggan='$id'";
                    $result = mysqli_query($db,$query);
                    $data = mysqli_fetch_assoc($result);

                ?>
                <button class="btn btn-primary navbar-btn m-2" onclick="window.location.href='logout.php'">Logout</button>
                <button class="btn btn-primary navbar-btn m-2" onclick="window.location.href='profile.php?id=<?php echo $data['id_pelanggan']?>'"><span class="mdi mdi-account" style="font-size: 17px;"><i></i></span></button>
                
                
                <?php else: ?>
                <button class="btn btn-primary login navbar-btn m-2" onclick="window.location.href='login.php'">Login</button>
                <?php endif ?>

            </div>
        </nav>
    </header>