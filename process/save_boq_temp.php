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
	$work_unit = sanitize_string($_POST['work_unit']);
	$remark= str_replace("'","&sbquo;",sanitize_string($_POST['remark']));
	$rate= sanitize_string($_POST['rate']);
	$_SESSION['IRIS_BQ_REF_NO'] = $ref_no;
	try{
		 $conn->beginTransaction();
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM boq_temp WHERE ref_no='".$ref_no."' AND item_id='".$material."'  AND work_id='".$work_unit."'  LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==1){
			 die("<div class='alert alert-danger'> * Item already exists!</div>");			 
		 }		 
		 //save data
		 $save = $conn->prepare("INSERT INTO boq_temp(item_id,ref_no,remark,qty,rate,work_id)VALUES('".$material."','".$ref_no."','".$remark."','".$quantity."','".$rate."','".$work_unit."')");
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