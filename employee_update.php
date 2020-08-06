<?php
include("sidebar.php");
include("connect.php");

$emp_id = $_POST['emp_id'];
$emp_name = $_POST['emp_name'];
$emp_phone = $_POST['emp_phone'];
$emp_email = $_POST['emp_email'];
$emp_department = $_POST['emp_department'];
$emp_position = $_POST['emp_position'];
$emp_working = $_POST['emp_working'];

$sql = "UPDATE employee SET emp_id = '".$emp_id."', emp_name = '".$emp_name."', emp_phone = '".$emp_phone."', emp_email = '".$emp_email."',
		emp_department = '".$emp_department."', emp_position = '".$emp_position."', emp_working = '".$emp_working."' WHERE
		emp_id = '".$emp_id."'";
mysqli_query($link, $sql) or die(mysqli_error());

echo '<script type="text/javascript">'; 
echo 'alert("Profile is updated.");'; 
echo 'window.location.href = "profile.php";';
echo '</script>';


?>