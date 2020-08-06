<?php 
include("sidebar.php");
include("connect.php");
$id = $_GET["id"];
?>

    <title>Add Issues</title>

    		<h2><?php echo $id ?></h2>
            <table>
                <?php
                $sql = mysqli_query($link, "SELECT issue_id, title, problem, date_issue, department, pic, issued_by FROM issue 
                       WHERE issue_id = '".$id."'");

                if (!$sql)
                {
                    die('Error: ' . mysqli_error($link));
                }

                if(mysqli_num_rows($sql) > 0)
                {
                    while($row = $sql->fetch_assoc())
                    {
                        $issue_id = $row["issue_id"];
                        echo "<tr><th>Issue ID</th><td width='75%'>" .$issue_id. "</td></tr>";
                        echo "<tr><th>Title</th><td width='75%'>" .$row["title"]. "</td></tr>";
                        echo "<tr><th>Problem</th><td width='75%'>" .$row["problem"]. "</td></tr>";
                        echo "<tr><th>Date Issued</th><td width='75%'>" .$row["date_issue"]. "</td></tr>";
                        echo "<tr><th>Department</th><td width='75%'>" .$row["department"]. "</td></tr>";
                        echo "<tr><th>Person-in-Charge (PIC)</th><td width='75%'>" .$row["pic"]. "</td></tr>";
                        echo "<tr><th>Issued By</th><td width='75%'>" .$row["issued_by"]. "</td></tr>";
                    }
                }
                ?>
            </table>

            <table>
                <?php
                $sql = mysqli_query($link, "SELECT date_settle, status, payment, payment_method, bank_details, notes FROM settle 
                       WHERE issue_id = '".$id."'");

                if (!$sql)
                {
                    die('Error: ' . mysqli_error($link));
                }

                if(mysqli_num_rows($sql) > 0)
                {
                    while($row = $sql->fetch_assoc())
                    {
                        echo "<tr><th>Date Completion</th><td width='75%'>" .$row["date_settle"]. "</td></tr>";
                        echo "<tr><th>Status</th><td width='75%'>" .$row["status"]. "</td></tr>";
                        echo "<tr><th>Payment</th><td width='75%'>RM" .$row["payment"]. "</td></tr>";
                        echo "<tr><th>Payment Method</th><td width='75%'>" .$row["payment_method"]. "</td></tr>";
                        echo "<tr><th>Bank Details</th><td width='75%'>" .$row["bank_details"]. "</td></tr>";
                        echo "<tr><th>Notes</th><td width='75%'>" .$row["notes"]. "</td></tr>";
                    }
                }
                ?>
            </table>