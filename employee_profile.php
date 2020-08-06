<?php 
include("sidebar.php");
include("connect.php");
$emp_id = $_GET['id'];

?>
<title>Employee Profile</title>
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
    <h3>Leave Details</h3>
    <?php
    $sql = "SELECT annual_leave, al_earned, mc, mc_earned, carry_forward, cmp, hsp, mrg, mty, pty FROM staff_leave
                        WHERE emp_id = '".$emp_id."'";
                $result = mysqli_query($link, $sql) or die ( mysqli_error());
                $row = mysqli_fetch_assoc($result);
    
    ?>
    <table>
        <tr>
            <th>Annual Leave</th>
            <th>Earned</th>
            <th>Bring Forward (EXP MARCH 2020)</th>
            <th>Medical Certificate</th>
            <th>Earned</th>
            <th>Compassionate Leave</th>
            <th>Hospitalization Leave</th>
            <th>Marriage Leave</th>
            <th>Maternity Leave</th>
            <th>Paternity Leave</th>
        </tr>
        <tr>
            <td><?php echo $row['annual_leave']; ?></td>
            <td><?php echo $row['al_earned']; ?></td>
            <td><?php echo $row['carry_forward']; ?></td>
            <td><?php echo $row['mc']; ?></td>
            <td><?php echo $row['mc_earned']; ?></td>
            <td><?php echo $row['cmp']; ?></td>
            <td><?php echo $row['hsp']; ?></td>
            <td><?php echo $row['mrg']; ?></td>
            <td><?php echo $row['mty']; ?></td>
            <td><?php echo $row['pty']; ?></td>
        </tr>
    </table>
    <div class="line"></div>
    <h3>Annual Leave</h3>
    <?php
    $sql = "SELECT * FROM annual_leave WHERE emp_id = '".$emp_id."'";
    $result = mysqli_query($link, $sql) or die ( mysqli_error());
    $row = mysqli_fetch_assoc($result);
    $total_leave = $row['jan'] + $row['feb'] + $row['mar'] + $row['apr'] + $row['may'] + $row['jun'] + $row['jul'] + $row['aug'] + $row['sep'] + $row['oct'] + $row['nov'] + $row['des'] ;
    ?>
    <table>
        <tr>
            <th>Year</th>
            <th>January</th>
            <th>February</th>
            <th>March</th>
            <th>April</th>
            <th>May</th>
            <th>June</th>
            <th>July</th>
            <th>August</th>
            <th>September</th>
            <th>October</th>
            <th>November</th>
            <th>December</th>
            <th>Total</th>
        </tr>
        <tr>
            <td><?php echo $row['year']; ?></td>
            <td><?php echo $row['jan']; ?></td>
            <td><?php echo $row['feb']; ?></td>
            <td><?php echo $row['mar']; ?></td>
            <td><?php echo $row['apr']; ?></td>
            <td><?php echo $row['may']; ?></td>
            <td><?php echo $row['jun']; ?></td>
            <td><?php echo $row['jul']; ?></td>
            <td><?php echo $row['aug']; ?></td>
            <td><?php echo $row['sep']; ?></td>
            <td><?php echo $row['oct']; ?></td>
            <td><?php echo $row['nov']; ?></td>
            <td><?php echo $row['des']; ?></td>
            <td><?php echo $total_leave ?></td>
        </tr>
    </table>
    <div class="line"></div>
            <h3>Login Details</h3>
            <?php
    
                $sql = "SELECT emp_id, password FROM login 
                        WHERE emp_id = '".$emp_id."'";
                $result = mysqli_query($link, $sql) or die ( mysqli_error());
                $row = mysqli_fetch_assoc($result);
            ?>
            <table>
                <tr>
                    <th>Username</th>
                    <td><?php echo $row['emp_id']; ?></td>
                </tr>
    
                <tr>
                    <th>Password</th>
                    <td><?php echo $row['password']; ?></td>
                </tr>
            </table> 
            <div class="line"></div>
            <h2>Personal Details</h2>
            <form method="post" action="employee_update.php">
            <table>
            <?php

            $sql = "SELECT emp_id, emp_name, emp_phone, emp_email, emp_department, emp_position, emp_working FROM employee 
                    WHERE emp_id = '".$emp_id."'";
            $result = mysqli_query($link, $sql) or die ( mysqli_error());
			$row = mysqli_fetch_assoc($result);
			?>
            
            <tr>
            	<th>Employee ID</th>
            	<td><input type='text' name='emp_id' value="<?php echo $row['emp_id']; ?>" readonly></td>
            </tr>
            
            <tr>
            	<th>Name</th>
            	<td><input type='text' name='emp_name' value="<?php echo $row['emp_name']; ?>"></td>
            </tr>

            <tr>
                <th>Phone No.</th>
                <td><input type='text' name='emp_phone' value="<?php echo $row['emp_phone']; ?>"></td>
            </tr>
            
            <tr>
            	<th>Email</th>
            	<td><input type='text' name='emp_email' value="<?php echo $row['emp_email']; ?>"></td>
            </tr>
                         
            <tr>
            	<th>Department</th>
            	<td><input type='text' name='emp_department' value="<?php echo $row['emp_department']; ?>"></td>
            </tr>
            
            <tr>
            	<th>Position</th>
            	<td><input type='text' name='emp_position' value="<?php echo $row['emp_position']; ?>"></td>
            </tr>
            
            <tr>
            	<th>Start Working</th>
            	<td><input type='date' name='emp_working' value="<?php echo $row['emp_working']; ?>"></td>
            </tr>
                
            </table>
            <input type="submit" value="Update Profile">
        </form>
    </div>
