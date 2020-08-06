<?php 
include("sidebar.php");
include("connect.php");
?>

<title>KPI</title>

            <h2>Key Performance Indicator (KPI)</h2>
            <h4>Daily</h4>
            <form method="post" action="kpi_delete.php">
            <table>
            <?php
            $emp_id = $_GET['id'];
            $count_d = 1;

            $sql = mysqli_query($link, "SELECT id, details FROM kpi WHERE employee = '".$emp_id."' AND type_task = 'Daily'");
            if (!$sql)
                {
                    die('Error: ' . mysqli_error($link));
                }

            if(mysqli_num_rows($sql) > 0){

                    while($row = $sql->fetch_assoc()) {
                        $details_id = $row["id"];
                        echo "<tr><td>".$count_d++.".</td>".
                             "<td>".$row["details"]."</td>".
                             "<td><input type='checkbox' name='checkbox[]' value=".$details_id."></td></tr>";
                    }
                }


            ?>
            </table>
            <h4>Weekly</h4>
            <table>
            <?php
            $emp_id = $_GET['id'];
            $count_w = 1;

            $sql = mysqli_query($link, "SELECT id, details FROM kpi WHERE employee = '".$emp_id."' AND type_task = 'Weekly'");
            if (!$sql)
                {
                    die('Error: ' . mysqli_error($link));
                }

            if(mysqli_num_rows($sql) > 0){

                    while($row = $sql->fetch_assoc()) {
                        $details_id = $row["id"];
                        echo "<tr><td>".$count_w++.".</td>".
                             "<td>".$row["details"]."</td>".
                             "<td><input type='checkbox' name='checkbox[]' value=".$details_id."></td></tr>";
                    }
                }


            ?>
            </table>
            <h4>Monthly</h4>
            <table>
            <?php
            $emp_id = $_GET['id'];
            $count_m = 1;

            $sql = mysqli_query($link, "SELECT id, details FROM kpi WHERE employee = '".$emp_id."' AND type_task = 'Monthly'");
            if (!$sql)
                {
                    die('Error: ' . mysqli_error($link));
                }

            if(mysqli_num_rows($sql) > 0){

                    while($row = $sql->fetch_assoc()) {
                        $details_id = $row["id"];
                        echo "<tr><td>".$count_m++.".</td>".
                             "<td>".$row["details"]."</td>".
                             "<td><input type='checkbox' name='checkbox[]' value=".$details_id."></td></tr>";
                    }
                }


            ?>
            </table>
        <input type="submit" name="submit" value="Delete">
    </form>
