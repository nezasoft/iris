<?php
include('../connect_db/connect_db.php');
$lpo_id = sanitize_string($_POST['lpo_id']);
if(empty($lpo_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from temp_lpos where lpo_id='$lpo_id'");

if($del){

echo '<span class="success">LPO Item Deleted Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=lpos&act=new_lpo#TransDiv";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while removing lpo item. Please try again'.mysql_error().'</span>';
}


}



?>