 <?php
include("../connection/connect.php");

//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$name = sanitize_string($_POST['name']);
	$store_desc = sanitize_string($_POST['store_desc']);
	
	try{
		 $conn->beginTransaction();
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM stores WHERE store_name='".$name."' AND site_id='".$_SESSION['IRIS_SITE_ID']."'  LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();
		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Record already exists!</div>");
			 
		 }
		 
		 //save data
		 $save = $conn->prepare("INSERT INTO stores(store_name,store_desc,site_id)VALUES('".$name."','".$store_desc."','".$_SESSION['IRIS_SITE_ID']."')");
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