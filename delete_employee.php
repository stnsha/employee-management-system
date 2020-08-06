<?php

include("sidebar.php");
include("connect.php");

$id = $_GET['id'];

mysqli_query($link,"DELETE FROM employee WHERE emp_id = '$id'");
echo '<script type="text/javascript">'; 
echo 'alert("Delete successful");'; 
echo 'window.location.href = "view_employee.php";';
echo '</script>';
?>