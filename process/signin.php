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
		 $check_login = $conn->prepare("SELECT us.id AS user_id, us.fname, us.lname, us.email,us.username,us.site_id, s.site_name,us.role_id, r.role_name, us.lname FROM users AS us LEFT JOIN roles AS r ON r.id = us.role_id  JOIN sites AS s ON s.id = us.site_id WHERE (us.email='".$email."' OR us.username='".$email."' )   LIMIT 1");
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
				<h4 class="mb-1 text-success">Authentication successfull</h4>
					<span> Redirecting. Please wait...</span>
				</div>
			</div>';
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