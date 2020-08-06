<?php
include("sidebar.php");
include("connect.php");
if ($_SESSION["username"] !== "admin")
{
    echo '<script type="text/javascript">'; 
    echo 'alert("Cannot open page.");'; 
    echo 'window.location.href = "login.html";';
    echo '</script>';
}

else
{
?>

    <title>Admin</title>

            <div class="container">
                <div class="row">
                    <div class="col">
                        <h4>Issues</h4>
                        <table>
                            <tr>
                                <th>No.</th>
                                <th>Title</th>
                                <th>PIC</th>
                                <th>Status</th>
                            </tr>
                        <?php
                        $count = 1;
                        $sql = mysqli_query($link, "SELECT issue_id, title, pic, status FROM issue");
                            if (!$sql)
                            {
                                die('Error: ' . mysqli_error($link));
                            }

                            if(mysqli_num_rows($sql) > 0){
                                while($row = $sql->fetch_assoc()) {
                                    echo "<tr><td>".$count++.".</td>".
                                         "<td>".$row['title']."</td>".
                                         "<td>".$row['pic']."</td>".
                                         "<td><a href='.php?id=".$row['issue_id']."'>".$row['status']."</a></td></tr>";
                            }
                        }

                        ?>
                    </table>
                    </div>
                    <div class="line"></div>
                    <h4>Employee of JRMNS</h4>
                        <table>
                            <tr>
                                <th>No.</th>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Action</th>
                            </tr>
                        <?php 
                            $count = 1;
                            $sql = mysqli_query($link, "SELECT emp_id, emp_name FROM employee");
                            if (!$sql)
                            {
                                die('Error: ' . mysqli_error($link));
                            }

                            if(mysqli_num_rows($sql) > 0){
                                while($row = $sql->fetch_assoc()) {
                                    echo "<tr><td>".$count++.".</td>".
                                         "<td>".$row['emp_id']."</td>".
                                         "<td>".$row['emp_name']."</td>".
                                         "<td><a href='employee_profile.php?id=".$row['emp_id']."'>View Profile</a></td></tr>";
                            }
                        }

                        ?>
                    
                </table>
                  </div>
                </div>

<?php
}
?>
