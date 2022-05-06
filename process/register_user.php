<?php
include("../connection/connect.php");
require_once('../Mailer/PHPMailerAutoload.php');
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
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
    $mail->Subject = 'Account Creation - Iris Management Platform';
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
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$fname = sanitize_string($_POST['fname']);
	$lname = sanitize_string($_POST['lname']);
	$email = sanitize_string($_POST['email']);
	$username = sanitize_string($_POST['username']);
	$user_role = sanitize_string($_POST['user_role']);
	$site_name= sanitize_string($_POST['site_name']);
	
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
     die("<div class='alert alert-danger'> *The email address supplied is invalid</div>");
     }
	 
	if(preg_match("/^[A-Z][a-zA-Z -]+$/", $fname) === 0){
	 die("<div class='alert alert-danger'>First name must be from letters, dashes, spaces and must not start with dash</div>");
	}

	if(preg_match("/^[A-Z][a-zA-Z -]+$/", $lname) === 0){
	 die("<div class='alert alert-danger'>Last name must be from letters, dashes, spaces and must not start with dash</div>");
	}

	
	try{
		 $conn->beginTransaction();
		 //check if email exists
		 $check= $conn->prepare("SELECT id FROM users WHERE email='".$email."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Email already exists!</div>");			 
		 }
		 
		 //save data
		 $save = $conn->prepare("INSERT INTO users(site_id,email,username,fname,lname,password,role_id,date_created)VALUES('".$site_name."','".$email."','".$username."','".$fname."','".$lname."','".create_pass_hash($password)."','".$user_role."',curdate())");
		 $save->execute();
		  $log_desc ="Added a new user  <strong>".$fname."</strong>";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		  $log->execute();
		 $conn->commit();
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
				<h4 class="mb-1 text-success">Success</h4>
					<span>User account created! </span>
				</div>
			</div>';
		 //reload user reports
		 echo "<script>$('#form_section').empty();getdata(1);</script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	