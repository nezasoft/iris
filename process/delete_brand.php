<?php
include('../connect_db/connect_db.php');
$brand_id = sanitize_string($_POST['brand_id']);

if(empty($brand_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from brands where brand_id='$brand_id'");

if($del){

echo '<span class="success">Brand Deleted Successfully!</span>';	

$url = '../compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_mat&ip=view_brands#list_brands';
echo '<script>
 setTimeout(function(){window.location="'.$url.'";}, 1000); 
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deleting brand Please try again'.mysql_error().'</span>';
}


}



?>