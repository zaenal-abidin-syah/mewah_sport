<?php
$server = "127.0.0.1:3306";
$user = "root";
$password = "12345678";
$nama_database = "db_mewahsport";
$db = mysqli_connect($server, $user, $password, $nama_database);
if( !$db ){
die("Gagal terhubung dengan database: " . mysqli_connect_error());
}
