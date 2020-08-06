<?php
include("connect.php");
session_start();
$id = $_GET['id'];

$query = "SELECT * FROM apply_leave WHERE id = '".$id."'";
$result = mysqli_query($link, $query) or die ( mysqli_error());
$row = mysqli_fetch_assoc($result);
$emp_id = $row['emp_id'];
$type_leave = $row['type_leave'];
//echo $emp_id;

function dateDiffInApply($from_apply, $to_apply)  
{ 
    // Calulating the difference in timestamps 
    $diffApply = strtotime($to_apply) - strtotime($from_apply); 
      
    // 1 day = 24 hours 
    // 24 * 60 * 60 = 86400 seconds 
    return abs(round($diffApply / 86400)); 
} 

$date_apply = $row['date_apply'];
//echo $date_apply.'<br>';
$from_apply = substr($date_apply, -23, 10);
//echo $from_apply.'<br>';
$to_apply = substr($date_apply, -10);
//echo $to_apply.'<br>';
// Function call to find date difference 
$dateDiff_apply = dateDiffInApply($from_apply, $to_apply) + 1; 
  
// Display the result 
//printf("Difference between two dates: "
 //. $dateDiff_apply . " Days <br>");

//////////////////////////////////////////////////////

function dateDiffInClaim($from_claim, $to_claim)  
{ 
    // Calulating the difference in timestamps 
    $diffClaim = strtotime($to_claim) - strtotime($from_claim); 
      
    // 1 day = 24 hours 
    // 24 * 60 * 60 = 86400 seconds 
    return abs(round($diffClaim / 86400)); 
} 

$claim_date = $row['claim_date'];
//echo $claim_date.'<br>';
$from_claim = substr($claim_date, -23, 10);
//echo $from_claim.'<br>';
$to_claim = substr($claim_date, -10);
//echo $to_claim.'<br>';
// Function call to find date difference 
$dateDiff_claim = dateDiffInClaim($from_claim, $to_claim); 
  
// Display the result 
//printf("Difference between two dates: "
  //. $dateDiff_claim . " Days ");

/////////////////////////////////////////////////

$query = "SELECT annual_leave, mc, carry_forward, cmp, hsp, mrg, mty, pty FROM staff_leave WHERE emp_id = '". $emp_id."'"; 
$result = mysqli_query($link, $query) or die ( mysqli_error());
$row1 = mysqli_fetch_assoc($result);

if($type_leave == "Annual Leave")
{
	if($dateDiff_apply == '0')
	{
		$al = 1;
	}
	else
	{
		$al = $dateDiff_apply;
	}
	$updated_al = $row1['annual_leave'] - $al;
	$sql = "UPDATE staff_leave SET annual_leave = '".$updated_al."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
	//echo $updated_al;
}

else if ($type_leave == "Sick Leave")
{
	if($dateDiff_apply == '0')
	{
		$sl = 1;
	}
	else
	{
		$sl = $dateDiff_apply;
	}
	
	$updated_mc = $row1['mc'] - $sl;
	$sql = "UPDATE staff_leave SET mc = '".$updated_mc."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
	//echo $updated_sl;
}

else if ($type_leave == "Carry Forward Leave")
{
	if($dateDiff_apply == '0')
	{
		$cf = 1;
	}
	else
	{
		$cf = $dateDiff_apply;
	}
	$updated_cf = $row1['carry_forward'] - $cf;
	$sql = "UPDATE staff_leave SET carry_forward = '".$updated_cf."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
//	echo 'Carry forward updated: ' .$updated_cf;
}

else if ($type_leave == "Compassionate Leave")
{
	if($dateDiff_apply == '0')
	{
		$cl = 1;
	}
	else
	{
		$cl = $dateDiff_apply;
	}
	$updated_cl = $row1['cmp'] - $cl;
	$sql = "UPDATE staff_leave SET cmp = '".$updated_cl."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
	//echo 'Compassionate leave updated: '. $updated_cl;
}

else if ($type_leave == "Hospitalization Leave")
{
	if($dateDiff_apply == '0')
	{
		$hl = 1;
	}
	else
	{
		$hl = $dateDiff_apply;
	}
	$updated_hl = $row1['hsp'] - $hl;
	$sql = "UPDATE staff_leave SET hsp = '".$updated_hl."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
//	echo $updated_hl;
}

else if ($type_leave == "Marriage Leave")
{
	if($dateDiff_apply == '0')
	{
		$ml = 1;
	}
	else
	{
		$ml = $dateDiff_apply;
	}
	$updated_ml = $row1['mrg'] - $ml;
	$sql = "UPDATE staff_leave SET mrg = '".$updated_ml."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
	//echo $updated_ml;
}

else if ($type_leave == "Maternity Leave")
{
	if($dateDiff_apply == '0')
	{
		$mty = 1;
	}
	else
	{
		$mty = $dateDiff_apply;
	}
	$updated_mty = $row1['mty'] - $mty;
	$sql = "UPDATE staff_leave SET mty = '".$updated_mty."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
	//echo $updated_mty;
}

else if ($type_leave == "Paternity Leave")
{
	if($dateDiff_apply == '0')
	{
		$pty = 1;
	}
	else
	{
		$pty = $dateDiff_apply;
	}
	$updated_pty = $row1['pty'] - $pty;
	$sql = "UPDATE staff_leave SET pty = '".$updated_pty."' WHERE emp_id = '". $emp_id."'";
	if(mysqli_query($link, $sql)){
	} else{
    	echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
	}
	//echo $updated_pty;
}


$sql = "UPDATE apply_leave SET approval = 'Approved' WHERE id = '".$id."'";
if(mysqli_query($link, $sql)){
    echo '<script type="text/javascript">';
    echo 'alert("Record added successfully");'; 
	echo 'window.location.href = "view_leave.php";';
	echo '</script>';
//	echo 'Successful';
    
} 

else {
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

	?>

