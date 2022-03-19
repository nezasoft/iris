 <?php
include("../connection/connect.php");

//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$site_name = sanitize_string($_POST['site_name']);
	$phone_no = sanitize_string($_POST['phone_no']);
	$email = sanitize_string($_POST['email']);
	$postal = sanitize_string($_POST['postal']);
	$physical = sanitize_string($_POST['physical']);
	$site_code = substr(strtoupper($site_name),0,3);
	
	try{
		 $conn->beginTransaction();
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM sites WHERE site_name='".$site_name."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();
		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Record already exists!</div>");
			 
		 }
		 
		 //save data
		 $save = $conn->prepare("INSERT INTO sites(site_name,site_phone,site_email,site_postal,site_address,date_created,site_status,site_code)VALUES('".$site_name."','".$phone_no."','".$email."','".$postal."','".$physical."',curdate(),'Active','".$site_code."')");
		 $save->execute();
		 $conn->commit();
		 echo "<div class='alert alert-success'> Record created! </div>";
		 //reload user reports
		 //echo "<script>getdata(1);</script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	