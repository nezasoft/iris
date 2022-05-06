<?php
    include_once("../connection/connect.php");
	
    //lets include the mailer class
    require_once('../Mailer/PHPMailerAutoload.php');
    //lets get mail settings
    $mail_server = $conn->prepare("SELECT * FROM mail_setting ORDER BY id ASC LIMIT 1");
    $mail_server->execute();
    $mail_server_count = $mail_server->rowCount();
    if($mail_server_count==0){
        die("<div class='alert alert-danger'>*Mail server not set or configured!</div>");
        
    }
    $mail_row = $mail_server->fetch(PDO::FETCH_ASSOC);
	 //Create a new PHPMailer instance
    $mail = new PHPMailer(); //Create a new PHPMailer instance
	$mail->isSMTP();
	$mail->SMTPOptions = array(
	'ssl' => array(
	'verify_peer' => false,
	'verify_peer_name' => false,
	'allow_self_signed' => true
	)
	);
    //Set the hostname of the mail server
    $mail->Host = $mail_row['mail_url'];
    //Set the SMTP port number - likely to be 25, 465 or 587
    $mail->Port = $mail_row['outgoing_port'];          // Set the SMTP port
    $mail->SMTPAuth = true;     // Enable SMTP authentication
    $mail->Username = $mail_row['username'];  // SMTP username
    $mail->Password = $mail_row['password']; // SMTP password
    $mail->SMTPSecure = "ssl"; 

    //Set who the message is to be sent from
    $mail->setFrom($mail_row['email'], $mail_row['mailer_name']);
    //Set an alternative reply-to address
    //$mail->addReplyTo('info@nezasoft.net', 'Nezasoft Team');
    //$mail->addBCC($mail_row['username'], 'Unicast Technologies Limited');
	$subject = "Password Recovery Request";
    $mail->Subject = $subject;
    $mail->isHTML(true);	
	//Generate activation code to be sent to user's email address
	 function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
   }
    $activation_code = generateRandomString();
    $password = $activation_code;
    //check if its an ajax request
    if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
		$email = sanitize_string($_POST['email']);	
	try{
    $conn->beginTransaction();	
	//Get user's first name
	$user = $conn->prepare("SELECT fname FROM users WHERE email='".$email."' LIMIT 1");
	$user->execute();
	$user_row = $user->fetch(PDO::FETCH_ASSOC);
	$fname = $user_row['fname'];	
	$update = $conn->prepare("UPDATE users SET password ='".create_pass_hash($password)."' WHERE email='".$email."' LIMIT 1");
	$update->execute();	
	$conn->commit();	
	    $main_message ='Your password has been reset successfully!<br/>
	    Your username/email is <strong>'.$email.'</strong> and password is <strong>'.$password.'</strong><br/>
	    Once you log in, click on logo icon on the top right and click on <strong> Change Password</strong> from the drop down to change to an easier password <br/> Thank you.
	    Kind Regards,<br/><br/>
	    System Administrator.<br/>';
		$main_message = '<br/>Dear <strong>'.$fname.'</strong>,<br/> '.$main_message.'<br/>';
		include("../modules/email_template.php");
		//echo $message;
		//Set who the message is to be sent to
		//$mail->addAddress($email, $name);
		$mail->addAddress($email, $fname);
		//Read an HTML message body from an external file, convert referenced images to embedded,
		//convert HTML into a basic plain-text alternative body
		$mail->msgHTML($message);
		//Replace the plain text body with one created manually
	    $mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
	    
		//Clear message 
		$message = '';
		//send the message, check for errors
			if(!$mail->send()) {
				echo "Mailer Error: " . $mail->ErrorInfo;
			}else{
				echo '<div class="alert alert-success d-flex align-items-center p-5 mb-10">
				<!--begin::Svg Icon | path: icons/duotune/general/gen048.svg-->
				<span class="svg-icon svg-icon-2hx svg-icon-success me-4">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
				<path opacity="0.3" d="M20.5543 4.37824L12.1798 2.02473C12.0626 1.99176 11.9376 1.99176 11.8203 2.02473L3.44572 4.37824C3.18118 4.45258 3 4.6807 3 4.93945V13.569C3 14.6914 3.48509 15.8404 4.4417 16.984C5.17231 17.8575 6.18314 18.7345 7.446 19.5909C9.56752 21.0295 11.6566 21.912 11.7445 21.9488C11.8258 21.9829 11.9129 22 12.0001 22C12.0872 22 12.1744 21.983 12.2557 21.9488C12.3435 21.912 14.4326 21.0295 16.5541 19.5909C17.8169 18.7345 18.8277 17.8575 19.5584 16.984C20.515 15.8404 21 14.6914 21 13.569V4.93945C21 4.6807 20.8189 4.45258 20.5543 4.37824Z" fill="black" />
				<path d="M10.5606 11.3042L9.57283 10.3018C9.28174 10.0065 8.80522 10.0065 8.51412 10.3018C8.22897 10.5912 8.22897 11.0559 8.51412 11.3452L10.4182 13.2773C10.8099 13.6747 11.451 13.6747 11.8427 13.2773L15.4859 9.58051C15.771 9.29117 15.771 8.82648 15.4859 8.53714C15.1948 8.24176 14.7183 8.24176 14.4272 8.53714L11.7002 11.3042C11.3869 11.6221 10.874 11.6221 10.5606 11.3042Z" fill="black" />
				</svg>
				</span>
				<!--end::Svg Icon-->
				<div class="d-flex flex-column">
				<h4 class="mb-1 text-success">Reset Successful!</h4>
					<span>A new password has been sent to your email. Use it to log in and change it to a favourable password </span>
				</div>
			</div>';
				echo "<script>
				$('#form_section').empty();
				</script>";				
			}
		 $mail->clearAddresses();
		 //Clear all attachments
		 $mail->ClearAttachments();	
	}catch(PDOException $e){
	$conn->rollBack();
 die("<span class='alert alert-danger'>Sorry, please request the password again!</span>");
	}	
	}else{
	die("<font color='red'>You are not authorized to access this content.</font>");
	}