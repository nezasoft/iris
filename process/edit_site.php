<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$site_name = sanitize_string($_POST['site_name']);
$site_email = sanitize_string($_POST['site_email']);
$site_postal = sanitize_string($_POST['site_postal']);
$site_phys = sanitize_string($_POST['site_phys']);
$site_phone = sanitize_string($_POST['site_phone']);
$site_id = sanitize_string($_POST['site_id']);

	if(empty($site_name)){
		$error = 'Site Name';	
	}
	if(empty($site_email)){
		$error = 'Email Address';	
		//validate email address
	 if (filter_var($site_email, FILTER_VALIDATE_EMAIL) === false) {
	$error = 'Enter a valid email address';
	}
	}
	if(empty($site_postal)){
		$error = 'Postal Address';	
	}
	if(empty($site_phys)){
		$error = 'Physical Address';	
	}
	if(empty($site_phone)){
		$error = 'Phone No';	
	}

	if(!preg_match("^[0-9]{3}[0-9]{3}[0-9]{3}[0-9]{3}$^", $site_phone)) {
	$error = 'Invalid Phone No.Must be in the format, 254721123456'; 

	}

	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("
		update sites set site_name='$site_name',site_phone='$site_phone',site_email='$site_email',
		site_postal='$site_postal',site_address='$site_phys' where site_id='$site_id'");
		//if success
		if($save){
			echo '<br/><span class="success">Record Updated!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Updating Record! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>