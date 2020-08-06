<?php
include("connect.php");

if ($_POST['submit']){
    $checkbox = $_POST['checkbox'];
    $count = count($checkbox);

    for($i=0;$i<$count;$i++){

        if(!empty($checkbox[$i])){ /* CHECK IF CHECKBOX IS CLICKED OR NOT */

        $id = mysqli_real_escape_string($link,$checkbox[$i]); /* ESCAPE STRINGS */
        mysqli_query($link,"DELETE FROM kpi WHERE id = '$id'"); /* EXECUTE QUERY AND USE ' ' (apostrophe) IN YOUR VARIABLE */

        } /* END OF IF NOT EMPTY CHECKBOX */

    } /* END OF FOR LOOP */
    echo '<script type="text/javascript">'; 
	echo 'alert("Delete successful");'; 
	echo 'window.location.href = "kpi_list.php";';
	echo '</script>';
}
?>