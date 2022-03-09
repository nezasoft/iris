<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$sup_name = sanitize_string($_POST['sup_name']);
$sup_email = sanitize_string($_POST['sup_email']);
$sup_postal = sanitize_string($_POST['sup_postal']);
$sup_phys = sanitize_string($_POST['sup_phys']);
$sup_phone = sanitize_string($_POST['sup_phone']);
$sup_id = sanitize_string($_POST['sup_id']);
	if(empty($sup_name)){
		$error = 'Supplier Name';	
	}
	if(empty($sup_email)){
		$error = 'Email Address';	
		//validate email address
	 if (filter_var($sup_email, FILTER_VALIDATE_EMAIL) === false) {
	$error = 'Enter a valid email address';
	}
	}
	if(empty($sup_postal)){
		$error = 'Postal Address';	
	}
	if(empty($sup_phys)){
		$error = 'Physical Address';	
	}
	if(empty($sup_phone)){
		$error = 'Phone No';	
	}

	if(!preg_match("^[0-9]{3}[0-9]{3}[0-9]{3}[0-9]{3}$^", $sup_phone)) {
	$error = 'Invalid Phone No.Must be in the format, 254721123456'; 

	}

	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("
		update suppliers set sup_name='$sup_name',sup_phone='$sup_phone',sup_email='$sup_email',sup_postal='$sup_postal',
		sup_physical='$sup_phys' where sup_id='$sup_id'");
		//if success
		
		
		if($save){
			echo '<br/><span class="success">Record Updated!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Updating! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>