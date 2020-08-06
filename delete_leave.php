<?php

include("sidebar.php");
include("connect.php");

$id = $_GET['id'];

mysqli_query($link,"DELETE FROM apply_leave WHERE id = '$id'");
echo '<script type="text/javascript">'; 
echo 'alert("Delete successful");'; 
echo 'window.location.href = "profile.php";';
echo '</script>';
?>