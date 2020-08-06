<?php 
include("sidebar.php");
include("connect.php");
?>
<h2>Employee</h2>
            <table>
            	<tr>
            		<th width="50%">Employee ID</th>
            		<th width="50%">Passwords</th>
            	</tr>
            	<?php

                
                $sql = mysqli_query($link, "SELECT emp_id, password FROM login");
                if (!$sql)
                    {
                        die('Error: ' . mysqli_error($link));
                    }

                if(mysqli_num_rows($sql) > 0){

                    while($row = $sql->fetch_assoc()) {
                        echo "<tr><td>".$row["emp_id"]."</td>".
                             "<td>".$row["password"]."</td></tr>";
                    }
                }

                ?>
            </table>