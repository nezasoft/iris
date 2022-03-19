<?php
include("../connection/connect.php");
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$email = sanitize_string($_POST['email']);
	$password = sanitize_string($_POST['password']);

	/*if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
     die("<div class='alert alert-danger'> *The email address supplied is invalid</div>");
     }*/
	 
	 
	 try{
		 $conn->beginTransaction();
		 //check if email is associated with any existing account
		 $check = $conn->prepare("SELECT us.id AS user_id FROM users AS us LEFT JOIN roles AS r ON r.id = us.role_id  JOIN sites AS s ON s.id = us.site_id WHERE (us.email='".$email."' OR us.username='".$email."' ) AND us.active='Yes' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();
		 
		 if($check_count!=1){
			 die("<div class='alert alert-danger'>Sorry! Your account is in-active</div>");
			 
		 }
		 //AND us.active='Yes' AND us.password='".create_pass_hash($password)."'
		 //Lets try to log in
		 $check_login = $conn->prepare("SELECT us.id AS user_id, us.fname, us.lname, us.email,us.username,us.site_id, s.site_name,us.role_id, r.role_name, us.lname FROM users AS us LEFT JOIN roles AS r ON r.id = us.role_id  JOIN sites AS s ON s.id = us.site_id WHERE (us.email='".$email."' OR us.username='".$email."' )  LIMIT 1");
		 $check_login->execute();
		 $check_login_count = $check_login->rowCount();		 
		 if($check_login_count!=1){
			 die("<div class='alert alert-danger'>Wrong username / password!</div>");			 
		 }		 
		 if($check_login_count>=1){
			 //Login successful
			 $user_row = $check_login->fetch(PDO::FETCH_ASSOC);
			 //Save user details in session
			 $_SESSION['IRIS_USER_ID'] = $user_row['user_id'];
			 $_SESSION['IRIS_SITE_ID'] = $user_row['site_id'];
			 $_SESSION['IRIS_ROLE_ID'] = $user_row['role_id'];
			 $_SESSION['IRIS_FNAME'] = $user_row['fname'];
			 $_SESSION['IRIS_LNAME'] = $user_row['lname'];
			 $_SESSION['IRIS_ROLE'] = $user_row['role_name'];
			 $_SESSION['IRIS_SITE_NAME'] = $user_row['site_name'];			 
			  echo "<script>$('#form_section').empty();</script>";
		      echo "<div class='alert alert-success'> Login successful! Redirecting...</div>";
			  echo "<script>
        		 window.setTimeout(function(){
        		window.location.href = '?home';
        		}, 3000);
        		</script>";			 			 
		 }
		 
		 //Update online status
		 $update_online = $conn->prepare("UPDATE users SET online='1' WHERE id='".$_SESSION['IRIS_USER_ID']."' LIMIT 1");
	
		 $conn->commit();
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}