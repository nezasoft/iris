<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();

$sup_name = sanitize_string($_POST['sup_name']);
$sup_email = sanitize_string($_POST['sup_email']);
$sup_postal = sanitize_string($_POST['sup_postal']);
$sup_phys = sanitize_string($_POST['sup_phys']);
$sup_phone = sanitize_string($_POST['sup_phone']);

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
//check sup
$ch_sup = mysql_num_rows(mysql_query("select sup_name from suppliers where sup_name ='$sup_name' limit 1"));

	if($ch_sup==1){
		$error ='There\'s already an existing supplier with the name';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//save 
		$save=mysql_query("insert into suppliers (sup_name,sup_phone,sup_email,sup_postal,sup_physical,date_added)
		values('$sup_name','$sup_phone','$sup_email','$sup_postal','$sup_phys',curdate())");
		//if success
		if($save){
			echo '<br/><span class="success">Record Saved!</span><br/>';
		}else{
			echo '<br/><span class="error">Error Saving! '.mysql_error().'</span><br/>';
			
		}
		
	}else{
		
		//display error message
		
		echo '<br/><span class="error">'.$error.'</span></br/>';
	}





?>