<?php
include('../connect_db/connect_db.php');
$req_id = sanitize_string($_POST['req_id']);
if(empty($req_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from temp_requisitions where req_id='$req_id'");

if($del){

echo '<span class="success">Requisition Item Deleted Successfully!</span>';	
echo '<script>
window.location.href="?account_type='.$_SESSION['COMSYS_AccountType'].'&site_id='.$_SESSION['COMSYS_SiteID'].'&sec=req&act=new_req#TransDiv";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while removing requisition item. Please try again'.mysql_error().'</span>';
}


}



?>