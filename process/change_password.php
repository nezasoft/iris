<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {;
$old_password = sanitize_string($_POST['current_password']);
$new_password = sanitize_string($_POST['new_password']);
$confirm_password = sanitize_string($_POST['confirm_password']);
//Check if passwords match 
if($new_password != $confirm_password){
die('<div class="alert alert-close alert-danger">
	<div class="alert-content">
           <h4 class="alert-title">Validation Check</h4>     
           <p>Passwords do not match. Confirm password again!</p>
       </div>
	  </div>');	
}
try{
$conn->beginTransaction();
//Check if the old password supplied matches the one in the system
$check_password = $conn->prepare("SELECT id FROM users WHERE password='".create_pass_hash($old_password)."' AND id='".$_SESSION['IRIS_USER_ID']."' LIMIT 1");
$check_password->execute();
$check_password_count = $check_password->rowCount();
if($check_password_count==0){
die('<div class="alert alert-close alert-danger">
	<div class="alert-content">
           <h4 class="alert-title">Confirmation Check</h4>     
           <p>The old password entered does not match the one saved in the system. Retype your old password!</p>
       </div>
	  </div>');	
}
//If Everything else is ok update users password
$update = $conn->prepare("UPDATE users SET password='".create_pass_hash($confirm_password)."' WHERE id='".$_SESSION['IRIS_USER_ID']."'  LIMIT 1");
$update->execute();
$conn->commit();
 $log_desc ="Changed account password";
		  //Log Activity
		  $log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no,company_id)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','','".$company_id."')");
		  $log->execute(); 
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
					<span>Password updated! </span>
				</div>
			</div>';
		 //reload user reports
       echo "<script>$('#form_section').empty();window.setTimeout(function(){$('#change_password').modal('hide');},1000);</script>";
 }catch(PDOException $e){
	 $conn->rollBack();
     die('<div class="alert alert-danger">
				<div class="bg-red alert-icon">
					<i class="glyph-icon icon-times"></i>
				</div>
				<div class="alert-content">
				  <h4 class="alert-title">Database Error!</h4>
				  <p>'.$e->getMessage().'</p>
			   </div>
		   </div>');
 }

}else{
			die("<font color='red'>You are not authorized to access this content.</font>");

} 

?> 