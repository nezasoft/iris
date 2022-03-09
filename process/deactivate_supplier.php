<?php
include('../connect_db/connect_db.php');
$sup_id = sanitize_string($_POST['sup_id']);
if(empty($sup_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("update suppliers set status = 'In-Active' where sup_id='$sup_id'");

if($del){

echo '<span class="success">Supplier Deactivated Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=sup&act=man_sup";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deactivating supplier. Please try again'.mysql_error().'</span>';
}


}



?>