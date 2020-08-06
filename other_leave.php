<?php 
include("sidebar.php");
include("connect.php");

$query = mysqli_query($link, "SELECT emp_id FROM employee WHERE emp_id='". $_SESSION["username"]."'");

if (!$query)
{
    die('Error: ' . mysqli_error($link));
}

if(mysqli_num_rows($query) > 0)
    {}
else
{
    echo '<script type="text/javascript">'; 
    echo 'alert("Cannot open page.");'; 
    echo 'window.location.href = "login.html";';
    echo '</script>';
}

?>
<title>Update Leave</title>
    <style type="text/css">
    	.back {
		  background-color: #6d7fcc;
		  color: white;
		  padding: 12px 20px;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		  float: left;
		}

		.back:hover {
		  background-color: #7386D5;
		}
    </style>

            <h2>Personal Details</h2>
            <form method="post" action="update_leave_2.php">
            <table>
                <tr>
                    <th>Employee ID</th>
                    <th>Compassionate Leave</th>
                    <th>Hospitalization Leave</th>
                    <th>Marriage Leave</th>
                    <th>Maternity Leave</th>
                    <th>Paternity Leave</th>
                </tr>
            <?php

            $sql = mysqli_query($link, "SELECT emp_id, cmp, hsp, mrg, mty, pty FROM staff_leave");
            if (!$sql)
            {
                die('Error: ' . mysqli_error($link));
            }
			
			if(mysqli_num_rows($sql) > 0){
				while($row = $sql->fetch_assoc()) {
					echo "<tr><td><input type='text' name='emp_id[]' value='".$row['emp_id']."' readonly></td>".
			        "<td><input type='text' name='cmp[]' value='".$row['cmp']."'></td>".
			        "<td><input type='text' name='hsp[]' value='".$row['hsp']."'></td>".
			        "<td><input type='text' name='mrg[]' value='".$row['mrg']."'></td>".
			        "<td><input type='text' name='mty[]' value='".$row['mty']."'></td>".
			        "<td><input type='text' name='pty[]' value='".$row['pty']."'></td><tr>";
			        
			    }
			}
			?>
            
            </table>
            <input type="submit" value="Update">
        </form>
    </div>
