<?php
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

$_SESSION["username"] = $username;

$link = mysqli_connect("localhost","jrmfamil_ans","Anasuh@97!","jrmfamil_jrmns");
//$link = mysqli_connect("localhost", "root", "", "jrmns");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 

if ($username == "admin" && $password == "jrmns12354!") {
	echo '<script type="text/javascript">'; 
	echo 'alert("Login successful");'; 
	echo 'window.location.href = "view_employee.php";';
	echo '</script>';
}

else {

	$query = mysqli_query($link, "SELECT emp_id FROM employee WHERE emp_id='".$username."'");

	if (!$query)
		{
			die('Error: ' . mysqli_error($link));
	    }

	if(mysqli_num_rows($query) > 0)
	{

	    echo '<script type="text/javascript">'; 
		echo 'alert("Login successful");'; 
		echo 'window.location.href = "profile.php";';
		echo '</script>';

	}

	else
	{
		echo '<script type="text/javascript">'; 
		echo 'alert("Employee not found. Contact admin");'; 
		echo 'window.location.href = "login.html";';
		echo '</script>';
	}
}
?>