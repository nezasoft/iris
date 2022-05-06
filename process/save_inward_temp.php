<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$order_no = sanitize_string($_POST['order_no']);
	$ref_no = sanitize_string($_POST['ref_no']);
	$_SESSION['IRIS_PO_REF_NO'] = $ref_no;
	
	
	try{
		 $conn->beginTransaction();
		 //lets start by removing all existing items
		 $remove = $conn->prepare("DELETE FROM temp_inward WHERE ref_no='".$ref_no."'");
		 $remove->execute();
		 
		 //get data from purchase orders
		 $orders = $conn->prepare("SELECT id AS order_id, mat_id,sup_id,qty FROM purchase_order AS po WHERE order_no='".$order_no."'");
		 $orders->execute();
		 $order_rows = $orders->fetchAll(PDO::FETCH_ASSOC);
		 
		 foreach($order_rows as $row){		 
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM temp_inward WHERE ref_no='".$ref_no."' AND mat_id='".$row['mat_id']."'   LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==0){
		//save data
		 $save = $conn->prepare("INSERT INTO temp_inward(mat_id,ref_no,sup_id,qty,order_id)VALUES('".$row['mat_id']."','".$ref_no."','".$row['sup_id']."','".$row['qty']."','".$row['order_id']."')");
		 $save->execute();
	 
		 }
		 
		 }
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