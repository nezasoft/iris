<?php
include('../connect_db/connect_db.php');

$del_ref_no = sanitize_string($_POST['del_no_send']);

$clear = mysql_query("delete from temp_delivery_note where delivery_no='$del_ref_no'");
if($clear){

echo '<span class="error">Cart Emptied Successfully!</span>';	
	
}
?>