<?php
include('../connect_db/connect_db.php');
$man_id = sanitize_string($_POST['man_id']);

if(empty($man_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{
//echo $store_id;
$del = mysql_query("delete from manufactures where man_id='$man_id'");

if($del){

echo '<span class="success">Manufacturer Deleted Successfully!</span>';	

$url = '../compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_mat&ip=view_man#list_manufacturers';
echo '<script>
 setTimeout(function(){window.location="'.$url.'";}, 1000); 
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deleting material category. Please try again'.mysql_error().'</span>';
}


}



?>