<?php
include('../connect_db/connect_db.php');
$store_id = sanitize_string($_POST['store_id']);
if(empty($store_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("update stores set store_status = 'In-Active' where store_id='$store_id'");

if($del){

echo '<span class="success">Site Deactivated Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=st&act=man_stores";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deactivating site. Please try again'.mysql_error().'</span>';
}


}



?>