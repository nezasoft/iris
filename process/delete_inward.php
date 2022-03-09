<?php
include('../connect_db/connect_db.php');
$g_inward_id = sanitize_string($_POST['g_inward_id']);
if(empty($g_inward_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from temp_inward where g_inward_id='$g_inward_id'");

if($del){

echo '<span class="success">Requisition Item Deleted Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=inw&act=new_inw#TransDiv";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while removing requisition item. Please try again'.mysql_error().'</span>';
}


}



?>