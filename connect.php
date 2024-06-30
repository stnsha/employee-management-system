<?php 


$link = mysqli_connect("employee-management-system.c7icmygw6c2g.ap-southeast-1.rds.amazonaws.com","admin","4r5oMIZzEHzMaOvcZTCj","employee-management-system");
//$link = mysqli_connect("localhost", "root", "", "jrmns");
//
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

?>
