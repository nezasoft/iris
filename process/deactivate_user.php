<?php
include('../connect_db/connect_db.php');
$user_id = sanitize_string($_POST['user_id']);
if(empty($user_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("update users set account_status = 'In-Active' where user_id='$user_id'");

if($del){

echo '<span class="success">Account Deactivated Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=us&act=man_users";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deactivating user account. Please try again'.mysql_error().'</span>';
}


}



?>