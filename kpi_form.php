<?php 
include("sidebar.php");
include("connect.php");

if ($_SESSION["username"] == "8805" || $_SESSION["username"] == "admin")
{}
else
{
    echo '<script type="text/javascript">'; 
    echo 'alert("Cannot open page.");'; 
    echo 'window.location.href = "profile.php";';
    echo '</script>';
}
?>
<title>KPI</title>

            <h2>Key Performance Indicator (KPI)</h2>

            <div class="container">
              <form method="post" action="submit_kpi.php">
              <div class="row">
                <div class="col-25">
                  <label for="Employee">Employee</label>
                </div>
                <div class="col-75">
                  <select name="employee" required>
                    
		            <?php

		            $sql = mysqli_query($link, "SELECT emp_id, emp_name FROM employee");

		            if (!$sql)
		            {
		                die('Error: ' . mysqli_error($link));
		            }

		            if(mysqli_num_rows($sql) > 0)
		            {
		                while($row = $sql->fetch_assoc())
		                {
		                    echo "<option value=" .$row["emp_id"]. ">" . $row["emp_name"]. "</option>";
		                }
		            }


		            ?></select>
                </div>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Category">Category</label>
                </div>
                <div class="col-75">
                  <select name="category" required>
                  	<option value="Customer Service">Customer Service</option>
                  	<option value="Designer">Designer</option>
                  	<option value="Dobi">Dobi</option>
                  	<option value="Filing">Filing</option>
                  	<option value="Finance">Finance</option>
                  	<option value="Human Resources/Admin/Sales">Human Resources/Admin/Sales</option>
                  	<option value="IT">IT</option>
                  	<option value="JRMNS">JRMNS</option>
                  	<option value="Juruwang">Juruwang</option>
                  	<option value="Kebersihan">Kebersihan</option>
                  	<option value="Kehadiran">Kehadiran</option>
                  	<option value="Pembantu Operasi">Pembantu Operasi</option>
					<option value="Penyeliaan">Penyeliaan</option>
                  	<option value="Stor">Stor</option>
                  	<option value="Squad/Booth">Squad/Booth</option>
                  </select>
                </div>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Type of Tasks">Type of Tasks</label>
                </div>
                <div class="col-75">
                  <select name="type_task" required>
                  	<option value="Daily">Daily</option>
                  	<option value="Weekly">Weekly</option>
                  	<option value="Monthly">Monthly</option>
                  	<option value="Required">Required</option>
                  </select>
                </div>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Details">Details</label>
                </div>
                <div class="col-75">
                  <textarea name="details" id="details" rows="10" cols="50" required></textarea>
                </div>
              </div>

            <div class="row">
            <input type="submit" name="submit"/>
          </div>
          </form>
        </div>