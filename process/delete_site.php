<?php
include('../connect_db/connect_db.php');
$cat_id = sanitize_string($_POST['cat_id']);
if(empty($cat_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from materials_categories where cat_id='$cat_id'");

if($del){

echo '<span class="success">Material Category Deleted Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&section=sites&action=manage_sites";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deleting site. Please try again'.mysql_error().'</span>';
}


}



?>