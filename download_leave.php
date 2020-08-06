<?php
session_start();
//include("sidebar.php");
//include("connect.php");
$leave = $_POST['type_leave'];

if ($_SESSION["username"] == "8805" || $_SESSION["username"] == "admin")
{}
else
{
    echo '<script type="text/javascript">'; 
    echo 'alert("Authorized users only.");'; 
    echo 'window.location.href = "profile.php";';
    echo '</script>';
}

date_default_timezone_set('Asia/Kuala_Lumpur');
$date = date('d/m/Y h:i:s a', time());
function employee()
{
  $output = '';
  $i = 1;
  $link = mysqli_connect("localhost", "jrmfamil_ans", "Anasuh@97!", "jrmfamil_jrmns"); 
  $sql = "SELECT emp_id, emp_name FROM employee ORDER BY emp_id ASC";  
  $result = mysqli_query($link, $sql);  
  while($row = mysqli_fetch_array($result))  
  {
    $output .= '<tr>
                <td>'.$i++.'.</td>
                <td>'.$row["emp_id"].'</td>
                <td>'.$row["emp_name"].'</td>
                </tr>
    ';
  }   

  return $output;    
}

function fetch_data() {
    $output = '';
    $type_leave = $_POST['type_leave'];
    $i = 1;
    $link = mysqli_connect("localhost", "jrmfamil_ans", "Anasuh@97!", "jrmfamil_jrmns"); 
    $sql = "SELECT emp_id, date_apply, approval FROM apply_leave WHERE type_leave = '".$type_leave."'";  
    $result = mysqli_query($link, $sql);  
    while($row = mysqli_fetch_array($result))  
    {
    
    $output .= '<tr>
                <td>'.$i++.'.</td>
                <td>'.$row["emp_id"].'</td>
                <td>'.$row["date_apply"].'</td>
                <td>'.$row["approval"].'</td>
                </tr>
    ';
  }   

  return $output;   
}

 if(isset($_POST["generate_pdf"]))  
 {  
      require_once('tcpdf/tcpdf.php');  
      $obj_pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
      $obj_pdf->SetCreator(PDF_CREATOR);  
      $obj_pdf->SetTitle("Leave Application");  
      $obj_pdf->SetHeaderData('', '', PDF_HEADER_TITLE, PDF_HEADER_STRING);  
      $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
      $obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
      $obj_pdf->SetDefaultMonospacedFont('helvetica');  
      $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
      $obj_pdf->SetMargins(PDF_MARGIN_LEFT, '10', PDF_MARGIN_RIGHT);  
      $obj_pdf->setPrintHeader(false);  
      $obj_pdf->setPrintFooter(false);  
      $obj_pdf->SetAutoPageBreak(TRUE, 10);  
      $obj_pdf->SetFont('helvetica', '', 11);  
      $obj_pdf->AddPage();  
      $content = '';  
      $content .= '<h4 align="center">JRMNS Employee Details</h4><br /> <table border="1" cellspacing="0" cellpadding="3">
            <tr>
                <th width="5%">No.</th>
                <th width="15%">Employee ID</th>
                <th width="80%">Name</th>
                </tr>
      '; 
      
      $content .= employee(); 
       $content .= '</table>'; 
       $content .='  
      <h4 align="center">';
      $content .= $leave;
      $content .= '</h4><br /> ';
      $content .= '  
      <table border="1" cellspacing="0" cellpadding="3">  
           <tr>  
           <th width="10%">No.</th>  
                <th width="15%">Employee ID</th>  
                <th width="35%">Date Apply</th>  
                <th width="40%">Approval</th> 
           </tr>  
      ';  
      $content .= fetch_data();  
      $content .= '</table>';  
      $content .= $date;
      $obj_pdf->writeHTML($content);  
      $obj_pdf->Output('file.pdf', 'I');  
 }  
?>
<!DOCTYPE html>
<html>
<head>
	<title>Download</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />   
</head>
<body>
    <h4 align="center">Download Leave Application</h4>
    
    <div class="container">  
    <form method="post" action="download_leave.php">
        <center>
            <select name="type_leave" required>
                <option value="Annual Leave">Annual Leave</option>
                <option value="Carry Forward Leave">Carry Forward Leave</option>
                <option value="Compassionate Leave">Compassionate Leave</option>
                <option value="Hospitalization Leave">Hospitalization Leave</option>
                <option value="Marriage Leave">Marriage Leave</option>
                <option value="Maternity Leave">Maternity Leave</option>
                <option value="Paternity Leave">Paternity Leave</option>
                <option value="Replacement Leave">Replacement Leave</option>
                <option value="Sick Leave">Sick Leave</option>
            </select>
            <p></p>
        <input type="submit" name="generate_pdf" class="btn btn-success" value="Generate PDF">
        <a href="https://jrmnsfamily.com/jrmns/profile.php">Go back</a></center>
    </form>
    </div>
</body>
</html>