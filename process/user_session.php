<?php
include('../connect_db/connect_db.php');
$user_id = sanitize_string($_POST['user_id']);
if(empty($user_id) ){
die('<script>
alert("User\'s info could not be loaded please refresh the page and try again");
closeLightbox();
</script>');
	
}else{

$_SESSION['COMSYS_EditUserID']=$user_id;



}



?>