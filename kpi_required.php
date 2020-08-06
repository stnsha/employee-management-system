<?php 
include("sidebar.php");
include("connect.php");

$id = $_GET['id'];
?>

    <title>KPI</title>
    <style type="text/css">
        #currdate {
            background-color: transparent;
            padding: 12px;
            border: 0px;
            border-radius: 0px;
        }

        #details {
            background-color: transparent;
            padding: 12px;
            border: 0px;
            border-radius: 0px;
        }

    </style>

            <h2>Key Performance Indicator (KPI)</h2>
            <form method="post" action="submit_required.php">
            <input type="text" id="currdate" name="curr_date" value="<?php echo date("d/m/Y"); ?>" readonly>
            <table>
                <tr>
                    <th>No.</th>
                    <th>Details</th>
                    <th>Progress</th>
                    <th>Notes</th>
                </tr>
            <?php

            $count = 1;

            $sql = mysqli_query($link, "SELECT id, details FROM kpi WHERE employee = '".$id."' AND type_task = 'Required'");
            if (!$sql)
                {
                    die('Error: ' . mysqli_error($link));
                }

            if(mysqli_num_rows($sql) > 0){

                    while($row = $sql->fetch_assoc()) {
                        echo "<td width='5%'>".$count++.".</td>".
                             "<td width='60%''><input type='text' id='details' name='details[]' value='".$row["details"]."'></td>".
                             "<td width='15%'><select name='progress[]' required><option value='Complete'>Complete</option>
                             <option value='Incomplete'>Incomplete</option></td>".
                             "<td width='20%'><input type='text' name='notes[]'></td></tr>";
                    }
                }


            ?>
        </table>
        
        <input type="submit" name="submit">
    </form>
  