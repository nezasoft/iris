<?php
include('../connect_db/connect_db.php');

$req_ref_no = sanitize_string($_POST['ref_no_send']);

$clear = mysql_query("delete from temp_requisitions where req_ref_no='$req_ref_no'");
if($clear){

echo '<span class="error">Cart Emptied Successfully!</span>';	
	
}
?>