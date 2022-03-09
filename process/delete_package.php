<?php
include('../connect_db/connect_db.php');
$pack_id = sanitize_string($_POST['pack_id']);
if(empty($pack_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{
//echo $store_id;
$del = mysql_query("delete from packages where pack_id='$pack_id'");

if($del){

echo '<span class="success">Package Deleted Successfully!</span>';	
echo '<script>
window.location.href="?acc_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_mat&ip=view_pack#list_p";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deleting package. Please try again'.mysql_error().'</span>';
}


}



?>