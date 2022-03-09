<?php
include('../connect_db/connect_db.php');
$mat_id = sanitize_string($_POST['mat_id']);
if(empty($mat_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{
//echo $store_id;
$del = mysql_query("delete from materials where mat_id='$mat_id'");

if($del){

echo '<span class="success">Material Deleted Successfully!</span>';	

$url = '../compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_mat&ip=view_mat#list_materials';
echo '<script>
 setTimeout(function(){window.location="'.$url.'";}, 1000); 
</script>';	
}else{
	
	echo '<span class="error">Error occured while deleting material. Please try again'.mysql_error().'</span>';
}


}



?>