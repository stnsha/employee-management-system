<?php 
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

 function fetch_data()  
 {  
      $output = '';  
      $i = 1;
      $link = mysqli_connect("localhost", "jrmfamil_ans", "Anasuh@97!", "jrmfamil_jrmns"); 
      $sql = "SELECT * FROM staff_leave ORDER BY emp_id ASC";  
      $result = mysqli_query($link, $sql);  
      while($row = mysqli_fetch_array($result))  
      {       
        
      $output .= '<tr>  
                    <td>'.$i++.'.</td>
                          <td>'.$row["emp_id"].'</td>  
                          <td>'.$row["annual_leave"].'</td>  
                          <td>'.$row["al_earned"].'</td>  
                          <td>'.$row["carry_forward"].'</td>  
                          <td>'.$row["mc"].'</td>  
                          <td>'.$row["mc_earned"].'</td>  
                     </tr>  
                          ';  
      }  
      return $output;  
 }  
 
  function other_leave()  
 {  
      $output = '';  
      $i = 1;
      $link = mysqli_connect("localhost", "jrmfamil_ans", "Anasuh@97!", "jrmfamil_jrmns"); 
      $sql = "SELECT * FROM staff_leave ORDER BY emp_id ASC";  
      $result = mysqli_query($link, $sql);  
      while($row = mysqli_fetch_array($result))  
      {       
        
      $output .= '<tr>  
                    <td>'.$i++.'.</td>
                          <td>'.$row["emp_id"].'</td>  
                          <td>'.$row["cmp"].'</td>  
                          <td>'.$row["hsp"].'</td>  
                          <td>'.$row["mrg"].'</td>  
                          <td>'.$row["mty"].'</td>  
                          <td>'.$row["pty"].'</td>  
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
      $obj_pdf->SetTitle("Employee and Leave Details");  
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
      $content .= '<h4 align="center">Employee and Leave Details</h4><br /> <table border="1" cellspacing="0" cellpadding="3">
            <tr>
                <th width="5%">No.</th>
                <th width="15%">Employee ID</th>
                <th width="80%">Name</th>
                </tr>
      '; 
      
      $content .= employee(); 
      $content .= '</table>'; 
      $content .= '  
      
      <div></div><table border="1" cellspacing="0" cellpadding="3">  
           <tr>  
                <th width="5%">No.</th>  
                <th width="15%">Employee ID</th>  
                <th width="15%">Annual Leave</th>  
                <th width="15%">Earned</th>  
                <th width="15%">Bring Forward</th>  
                <th width="20%">Medical Certificate</th>  
                <th width="15%">Earned</th>  
           </tr>  
      ';  
      
      $content .= fetch_data(); 
      $content .= '</table>';
      $content .= '  
      
      <div></div><table border="1" cellspacing="0" cellpadding="3">  
           <tr>  
                <th width="5%">No.</th>  
                <th width="15%">Employee ID</th>  
                <th width="20%">Compassionate Leave</th>  
                <th width="20%">Hospitalization Leave</th>  
                <th width="10%">Marriage Leave</th>  
                <th width="15%">Maternity Leave</th>  
                <th width="15%">Paternity Leave</th>  
           </tr>  
      ';  
      
      $content .= other_leave(); 
      $content .= '</table><div></div>';
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
           <br />
           <div class="container">  
                <h4 align="center">Download Employee and Leave Details</h4><br />  
                     <form method="post">  
                          <center><input type="submit" name="generate_pdf" class="btn btn-success" value="Generate PDF" /> 
                          <a href="https://jrmnsfamily.com/jrmns/profile.php">Go back</a></center>
                     </form>
                </div>  
           </div>  
      </body>  
 </html>  