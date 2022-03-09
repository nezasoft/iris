<?php
include('../connect_db/connect_db.php');
$site_id = sanitize_string($_POST['site_id']);
if(empty($site_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("update sites set site_status = 'In-Active' where site_id='$site_id'");

if($del){

echo '<span class="success">Site Deactivated Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&section=sites&action=manage_sites";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deactivating site. Please try again'.mysql_error().'</span>';
}


}



?>