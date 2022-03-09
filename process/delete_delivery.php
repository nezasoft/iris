<?php
include('../connect_db/connect_db.php');
$del_id = sanitize_string($_POST['del_id']);
if(empty($del_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from temp_delivery_note where delivery_id='$del_id'");

if($del){

echo '<span class="success">Delivery Item Deleted Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=del&act=new_del#TransDiv";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while removing delivery item. Please try again'.mysql_error().'</span>';
}


}



?>