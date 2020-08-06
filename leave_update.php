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
            <form method="post" action="update_leave.php">
            <table>
                <tr>
                    <th>Employee ID</th>
                    <th>Annual Leave</th>
                    <th>Earned</th>
                    <th>Bring Forward (EXP MARCH 2020)</th>
                    <th>Medical Certificate</th>
                    <th>Earned</th>
                </tr>
            <?php

            $sql = mysqli_query($link, "SELECT emp_id, annual_leave, al_earned, mc, mc_earned, carry_forward FROM staff_leave");
            if (!$sql)
            {
                die('Error: ' . mysqli_error($link));
            }
			
			if(mysqli_num_rows($sql) > 0){
				while($row = $sql->fetch_assoc()) {
					echo "<tr><td><input type='text' name='emp_id[]' value='".$row['emp_id']."' readonly></td>".
			        "<td><input type='text' name='annual_leave[]' value='".$row['annual_leave']."'></td>".
			        "<td><input type='text' name='al_earned[]' value='".$row['al_earned']."'></td>".
			        "<td><input type='text' name='carry_forward[]' value='".$row['carry_forward']."'></td>".
			        "<td><input type='text' name='mc[]' value='".$row['mc']."'></td>".
			        "<td><input type='text' name='mc_earned[]' value='".$row['mc_earned']."'></td><tr>";
			        
			    }
			}
			?>
            
            </table>
            <input type="submit" value="Update">
        </form>
    </div>
