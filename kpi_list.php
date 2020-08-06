<?php 
include("sidebar.php");
include("connect.php");
?>
<title>KPI</title>

            <h2>Key Performance Indicator (KPI)</h2>

            <table>
                    <tr>
                        <th width="20%">Employee ID</th>
                        <th width="60%">Employee Name</th>
                        <th width="20%">Action</th>
                    </tr>
                <?php

                
                $sql = mysqli_query($link, "SELECT emp_id, emp_name FROM employee");
                if (!$sql)
                    {
                        die('Error: ' . mysqli_error($link));
                    }

                if(mysqli_num_rows($sql) > 0){

                    while($row = $sql->fetch_assoc()) {
                        $id = $row["emp_id"];
                        echo "<tr><td width='20%'>".$id."</td>".
                             "<td width='60%'>".$row["emp_name"]."</td>".
                             "<td  width='20%'><a href='kpi_edit.php?id=".$id."'>Update</a></td></tr>";
                    }
                }

                ?>
                </table>