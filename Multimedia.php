<?php 
include("sidebar.php");
include("connect.php");
?>
<title>Add Issues</title>
            <h2>Submit an Issue</h2>

            <div class="container">
              <form method="post" action="submit_issue.php">
              <div class="row">
                <div class="col-25">
                  <label for="Title">Title</label>
                </div>
                <div class="col-75">
                  <input type="text" id="title_issue" name="title_issue" required>
                </div>
              </div>

            <script type="text/javascript">
              document.getElementById('title_issue').value = "<?php echo $_GET['title_issue'];?>";
            </script>

            <div class="row">
                <div class="col-25">
                  <label for="Problem">Problem</label>
                </div>
                <div class="col-75">
                  <textarea name="problem_issue" id="problem_issue" rows="10" cols="50" required></textarea>
                </div>
              </div>

            <script type="text/javascript">
              document.getElementById('problem_issue').value = "<?php echo $_GET['problem_issue'];?>";
            </script>

            <div class="row">
                <div class="col-25">
                  <label for="Date">Date</label>
                </div>
                <div class="col-75">
                  <input type="Date" id="date_issue" name="date_issue" required> 
                </div>
              </div>

            <script type="text/javascript">
              document.getElementById('date_issue').value = "<?php echo $_GET['date_issue'];?>";
            </script>

            <div class="row">
                <div class="col-25">
                  <label for="Department">Department</label>
                </div>
                <div class="col-75">
                  <input type="text" name="department_issue" value="Multimedia" readonly>
                </div>
              </div>

            <script type="text/javascript">
              document.getElementById('mySelect').value = "<?php echo $_GET['department_issue'];?>";
            </script>

            <div class="row">
                <div class="col-25">
                  <label for="PIC">Person-in-Charge (PIC)</label>
                </div>
                <div class="col-75">
                  <select name="pic_id" required>
                    
            <?php

            $sql = mysqli_query($link, "SELECT emp_id, emp_name FROM employee WHERE emp_department = 'Multimedia'");

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
                  <label for="Issued By">Issued By</label>
                </div>
                <div class="col-75">
                  <?php

                        $sql = mysqli_query($link, "SELECT emp_name FROM employee WHERE emp_id = '".$_SESSION["username"]."'");

                        if (!$sql)
                        {
                            die('Error: ' . mysqli_error($link));
                        }

                        if(mysqli_num_rows($sql) > 0)
                        {
                            while($row = $sql->fetch_assoc())
                            {
                                ?>
                                <input type="text" name="name_issue" value="<?php echo $row["emp_name"]; ?>" readonly>
                            <?php
                            }
                        }

                    ?>
                </div>
              </div>

            <div class="row">
            <input type="submit" name="submit" value="Submit Issue" />
          </div>
          </form>
        </div>
