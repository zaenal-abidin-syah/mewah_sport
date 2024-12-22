<?php
    session_destroy();
    echo "<script>alert('Anda telah logout');</script>";
    echo "<script>location='login-admin.php';</script>"
?>