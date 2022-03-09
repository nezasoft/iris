<?php
include('../connect_db/connect_db.php');


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
$email = sanitize_string($_POST['email']);
//errors
$error = '';
if(empty($email)){
$error = 'Please enter your email address';	
	
}
//check if this email exits
$check_email = mysql_num_rows(mysql_query("select email from users where email='$email' limit 1"));
if($check_email==0){
$error ='Sorry, there\s no account associated with the email address supplied'	;
	
}
	if(empty($error)){
	//lets generate a random password for this user
	$new_pass = uniqid(rand(1,5));
	//lets update this users password
	$update = mysql_query("update users set password='".create_pass_hash($new_pass)."' where email='$email' limit 1");
	if($update){
	//lets send the password to this user's email address
	$mail->addAddress($email, '');
    //$mail->addReplyTo('admin.support@gigabyte.co.ke', 'Gigabyte Systems');
    $mail->WordWrap = 50;
    $mail->isHTML(true);
    $mail->Subject = 'Elegant Properties-Password Recovery';
    $mail->Body    = 'Hi, '.$fname.' the password to your account has been reset to <font color="green">'.$new_pass.'</font>. Please log in with this password and change it to one that is easier for you under My Account > Change Password ';
	 //echo $mail->Body; 
	if(!$mail->send()) {
	   echo '<span class="error"> Message could not be sent.</span>';
	   echo '<span class="error">Mailer Error: ' . $mail->ErrorInfo.'</span>';
	   //exit;
	}else{
		
		echo '<div class="alert alert-success">Your password has been reset. Please log in to your email account to get your new password.</div>';
	}
	}else{
		
		echo '<div class="alert alert-danger">There was an error recovering your password '.mysql_error().'</div>';
	}
	
}else{
	
	echo '<div class="alert alert-danger"> '.$error. '</div>';
}
?>