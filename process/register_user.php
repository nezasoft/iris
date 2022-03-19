 <?php
include("../connection/connect.php");
require_once('../Mailer/PHPMailerAutoload.php');
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
    $mail->Host ='mail.nezasoft.net';
    //Set the SMTP port number - likely to be 25, 465 or 587
    $mail->Port = 465;          // Set the SMTP port
    $mail->SMTPAuth = true;     // Enable SMTP authentication
    $mail->Username ='#info2016'; // SMTP password
    $mail->SMTPSecure = "ssl"; 

    //Set who the message is to be sent from
    $mail->setFrom('info@nezasoft.net', 'Nezasoft Technologies');
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
		 $save = $conn->prepare("INSERT INTO users(site_id,email,username,fname,lname,password,role_id,date_created)VALUES('".$site_name."','".$email."','".$username."','".$fname."','".$lname."','".$password."','".$user_role."',curdate())");
		 $save->execute();
		 $conn->commit();
		 echo "<div class='alert alert-success'> Account created! </div>";
		 //reload user reports
		 //echo "<script>getdata(1);</script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	