<?php

include('../connect_db/connect_db.php');
//save input errors

$error = array();

$pass = sanitize_string($_POST['confirm_pass']);
$ver_code = sanitize_string($_POST['ver_code']);
$email= sanitize_string($_POST['email']);
if(empty($pass)){
	$error = 'Enter your password';

}
//check for any input errors
if(empty($error)){
	//save to db
	$save = mysql_query("update users set password='".create_pass_hash($pass)."' where ver_code='$ver_code' and email='$email' limit 1");
	
	//if success
	if($save){
		echo '<br/><div class="alert alert-success">Registration Successfull!!!. Please <a href="../">Login to continue</a></div><br/>';
		//update user's status to active
		mysql_query("update users set account_status='Active' where where ver_code='$ver_code' and email='$email' limit 1");
		
	}else{
		echo '<br/><div class="alert alert-danger">A problem occurred while saving your data. Please try again '.mysql_error().'</div><br/>';
		
	}
	
	
	
}else{
	//display error
	
	echo '<div class="alert alert-danger">'.$error.'</div>';
	
}
?>