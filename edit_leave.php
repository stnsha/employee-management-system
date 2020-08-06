<?php 
include("sidebar.php");
include("connect.php");
$id_leave = $_GET['id'];
?>

    <title>Apply Leave</title>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
            <h2>Apply Leave</h2>
            <?php

                $query = "SELECT id, emp_id, reason FROM apply_leave WHERE id = '". $id_leave."'"; 
                $result = mysqli_query($link, $query) or die ( mysqli_error());
                $row = mysqli_fetch_assoc($result);
            ?>
            <div class="container">
              <form method="post" action="update_editleave.php">
                  <input type='hidden' name='id_leave' value='<?php echo $row['id'];?>' />
              <div class="row">
                <div class="col-25">
                  <label for="Employee ID">Employee ID</label>
                </div>
                <div class="col-75">
                  <input type="text" name="emp_id" value="<?php echo $row['emp_id']; ?>" readonly>
                </div>
              </div>
              
              <div class="row">
                  <p>*Please fill in details below again.</p>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Types of Leave">Types of Leave</label>
                </div>
                <div class="col-75">
                  <select name="type_leave" required>
                  	<option value="Annual Leave">Annual Leave</option>
                  	<option value="Carry Forward Leave">Carry Forward Leave</option>
                  	<option value="Compassionate Leave">Compassionate Leave</option>
                  	<option value="Hospitalization Leave">Hospitalization Leave</option>
                  	<option value="Marriage Leave">Marriage Leave</option>
                  	<option value="Paternity Leave">Paternity Leave</option>
                  	<option value="Replacement Leave">Replacement Leave</option>
                  	<option value="Sick Leave">Sick Leave</option>
                  </select>
                </div>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Date Apply">Date Apply</label>
                </div>
                <div class="col-75">
                  <input type="text" name="date_apply">
                </div>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Claim Date">Claim Date</label>
                </div>
                <div class="col-75">
                  <input type="text" name="claim_date">
                </div>
              </div>

              <div class="row">
                <div class="col-25">
                  <label for="Reason">Reason</label>
                </div>
                <div class="col-75">
                  <textarea name="reason" id="details" rows="5" cols="50" required><?php echo $row['reason']; ?></textarea>
                </div>
              </div>

            <div class="row">
            <input type="submit" name="submit"/>
          </div>
          </form>
        </div>
        <script>
$(function() {
  $('input[name="date_apply"]').daterangepicker({
    opens: 'left'
  }, function(start, end, label) {
    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
  });
});
</script>
<script>
$(function() {
  $('input[name="claim_date"]').daterangepicker({
    opens: 'left'
  }, function(start, end, label) {
    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
  });
});
</script>
