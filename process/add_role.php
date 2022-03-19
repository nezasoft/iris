 <?php
include("../connection/connect.php");

//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$role_name = sanitize_string($_POST['role_name']);
	
	try{
		 $conn->beginTransaction();
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM roles WHERE role_name='".$role_name."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();
		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Record already exists!</div>");
			 
		 }
		 
		 //save data
		 $save = $conn->prepare("INSERT INTO roles(role_name)VALUES('".$role_name."')");
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