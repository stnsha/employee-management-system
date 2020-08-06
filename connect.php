<?php 


$link = mysqli_connect("localhost","jrmfamil_ans","Anasuh@97!","jrmfamil_jrmns");
//$link = mysqli_connect("localhost", "root", "", "jrmns");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

?>