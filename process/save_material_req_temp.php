<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$material = sanitize_string($_POST['material']);
	$ref_no = sanitize_string($_POST['ref_no']);
	$quantity = sanitize_string($_POST['quantity']);
	$remark= sanitize_string($_POST['remark']);
	$work_unit = sanitize_string($_POST['work_unit']);
	$building= sanitize_string($_POST['building']);
	$_SESSION['IRIS_MAT_REF_NO'] = $ref_no;
	try{
		 $conn->beginTransaction();
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM temp_requisitions WHERE req_ref_no='".$ref_no."' AND mat_id='".$material."' AND work_id='".$work_unit."' AND building_id='".$building."'  LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();
		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Item already exists!</div>");
			 
		 }
		 
		 //save data
		 $save = $conn->prepare("INSERT INTO temp_requisitions(mat_id,req_ref_no,req_details,qty,work_id,building_id)VALUES('".$material."','".$ref_no."','".$remark."','".$quantity."','".$work_unit."','".$building."')");
		 $save->execute();
		 $conn->commit();
		 //echo "<div class='alert alert-success'> Record created! </div>";
		 //reload user reports
		 //echo "<script>getdata(1);</script>";
	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");
		 
	 }
	 

}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	