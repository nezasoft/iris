<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$fname = sanitize_string($_POST['fname']);
$lname = sanitize_string($_POST['lname']);
$email = sanitize_string($_POST['email']);
$site = sanitize_string($_POST['site']);
$role = sanitize_string($_POST['role']);
$user_id = sanitize_string($_POST['user_id']);
	if(empty($fname)){
		$error = 'First Name';	
	}
	if(empty($role)){
		$error = 'Select Role';	
	}
	if(empty($email)){
	$error = 'Email Address';	
	//validate email address
	 if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
	$error = 'Enter a valid email address';
	}
	}
	if(empty($lname)){
		$error = 'Last Name';	
	}
	if(empty($site)){
		$error = 'Site Name';	
	}

	
	//check for errors
	
	if(empty($error)){
		//generate a verification code from a random number
		$ver_code = uniqid(rand(1,5));
	//convert to uppercase
	$ver_code = strtoupper($ver_code);
		//save 
		$save=mysql_query("
		update users set fname='$fname',lname='$lname',site_id='$site',email='$email',user_role='$role' where user_id='$user_id'");
		//if success
		if($save){
			echo '<br/><span class="success">Record updated successfully!</span><br/>';
		}else{
			echo '<br/><span class="success">Error updating record! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>