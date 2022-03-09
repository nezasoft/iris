<?php
include('../connect_db/connect_db.php');
//save input errors

$error = array();
require '../PHPMailer/PHPMailerAutoload.php';
    $mail = new PHPMailer;
    //Server settings
   // $mail->SMTPDebug = 2;                                 // Enable verbose debug output
    //$mail->Debugoutput = 'html';
    $mail->isSMTP();                                      // Set mailer to use SMTP
    $mail->Host = '37.61.232.138';  // Specify main and backup SMTP servers
   /*$mail->SMTPAuth = false;                               // Enable SMTP authentication
    $mail->Username = 'info@nezakenya.com';                 // SMTP username
    $mail->Password ='#info2015';                           // SMTP password
    $mail->SMTPSecure = 'tls'; */                           // Enable TLS encryption, `ssl` also accepted
    $mail->Port = 26;                                    // TCP port to connect 
    $mail->setFrom('info@nezakenya.com', 'Elegant Properties Limited (CMA)');   //Set who the message is to be sent from
    $mail->AddEmbeddedImage('http://elegant.nezakenya.com/images/elegant_logo.png', 'Elegant Properties Ltd (CMA)');

	$fname = sanitize_string($_POST['fname']);
	$lname = sanitize_string($_POST['lname']);
	$email = sanitize_string($_POST['email']);
	$site = sanitize_string($_POST['site']);
	$role = sanitize_string($_POST['role']);

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

//check email
$ch_email = mysql_num_rows(mysql_query("select email from users where email ='$email' limit 1"));

	if($ch_email==1){
		$error ='Email address is associated with another account';
		
	}
	
	//check for errors
	
	if(empty($error)){
		//generate a verification code from a random number
		$ver_code = uniqid(rand(1,5));
	//convert to uppercase
	$ver_code = strtoupper($ver_code);
		//save 
		$save=mysql_query("insert into users (fname,lname,email,site_id,ver_code,date_created,account_status,user_role)
		values('$fname','$lname','$email','$site','$ver_code',curdate(),'In-Active','$role')");
		//if success
		if($save){
			echo '<br/><br/><div  class="alert alert-success">Account Created Successfully!</div><br/>';
			
		$full_name = $fname.' '.$lname;
		$mail->addAddress($email, $full_name);
		$mail->WordWrap = 50;
		$mail->isHTML(true);
		$mail->Subject = 'Activate Account(Elegant Properties-CMA)';
		$mail->Body    = 'Hi, '.$fname.' your account has been set up successfully. Please follow this link to <a href="http://elegant.nezakenya.com/verify_user?ver_code='.$ver_code.'" target="_blank">ACTIVATE ACCOUNT!!!</a> your account ';
		 //echo $mail->Body; 
		if(!$mail->send()) {
		   echo '<span class="error"> Message could not be sent.</span>';
		   echo '<span class="error">Mailer Error: ' . $mail->ErrorInfo.'</span>';
		}
    		}else{
    			echo '<br/><div  class="alert alert-danger">Error Creating Account! '.mysql_error().'</div><br/>';
    			
    		}
    		
    	}else{
    		
    		//display error message
    		
    		echo '<br/><div class="alert alert-danger">'.$error.'</div></br/>';
    	}





?>