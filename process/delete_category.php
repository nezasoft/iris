<?php
include('../connect_db/connect_db.php');
$cat_id = sanitize_string($_POST['cat_id']);

if(empty($cat_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{
//echo $store_id;
$del = mysql_query("delete from materials_categories where mat_cat_id='$cat_id'");

if($del){

echo '<span class="success">Material Category Deleted Successfully!</span>';	
echo '<script>
window.location.href="?acc_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_mat&ip=view_cat#list_categories";
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deleting material category. Please try again'.mysql_error().'</span>';
}


}



?>