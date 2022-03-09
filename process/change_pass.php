<?php
include('../connect_db/connect_db.php');
$old_pass = sanitize_string($_POST['oldpassword']);
$new_pass = sanitize_string($_POST['confirm_pass']);
$error = '';


if(empty($old_pass)){
$error = 'Please enter your current password';
	
}
if(empty($new_pass)){
$error = 'Please confirm password';
	
}
//check if password is valid
$ch_pass = mysql_num_rows(mysql_query("select fname from users where password='".create_pass_hash($old_pass)."' 
and user_id='".$_SESSION['COMSYS_UserID']."' limit 1"));
if($ch_pass==0){
$error = 'Old Password does not match the currently saved password';	
	
}
//check for errors

if(empty($error)){
	//update passeword
	$qr = mysql_query("update users set password='".create_pass_hash($new_pass)."' where user_id = '".$_SESSION['COMSYS_UserID']."'");
	//if success
	if($qr==true){
		echo '<div class="alert alert-success">Password has been successfully changed to <font color="red">'.$new_pass.'</font></div>';
		
	}else{
		echo '<div class="alert alert-danger">Error occurred while updating password'.mysql_error().'</div>';
		
	}
	
	
}else{

echo '<div class="alert alert-danger">'.$error.'</div>';	
	
}
?>