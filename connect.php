<?php 


$link = mysqli_connect("sql.freedb.tech","freedb_ems_ans","gA@V#aWgpR83esV","freedb_ems2020");
//$link = mysqli_connect("localhost", "root", "", "jrmns");
//
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

?>
