<?php
include('../connect_db/connect_db.php');
$size_id = sanitize_string($_POST['size_id']);

if(empty($size_id) ){
die('<script>
alert("Error sending request. Please refresh the page and try again");
</script>');
	
}else{

$del = mysql_query("delete from sizes where size_id='$size_id'");

if($del){

echo '<span class="success">Size Deleted Successfully!</span>';	

$url = '../compadm?acc_type='.$_SESSION['COMSYS_AccountType'].'&sec=lpos&act=man_mat&ip=view_sizes#list_sizes';
echo '<script>
 setTimeout(function(){window.location="'.$url.'";}, 1000); 
</script>';
	
}else{
	
	echo '<span class="error">Error occured while deleting size Please try again'.mysql_error().'</span>';
}


}



?>