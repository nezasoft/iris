<?php
include("../connection/connect.php");
if(!isset($_SESSION['IRIS_USER_ID']) || $_SESSION['IRIS_USER_ID']=='' ){
echo '<script>window.location.href="?home";</script>';
exit();
}
function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
   }

    $ref_no = strtoupper(generateRandomString());
//check if its an ajax request
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {
	$material = sanitize_string($_POST['material']);
	$quantity = sanitize_string($_POST['quantity']);
	$remark = sanitize_string($_POST['remark']);
	try{
		 $conn->beginTransaction();
		 $get_item_name = $conn->prepare("SELECT ms.id AS item_id, mt.mat_name FROM materials_stock AS ms LEFT JOIN materials AS mt ON mt.id = ms.mat_id WHERE ms.id='".$material."' LIMIT 1");
		 $get_item_name->execute();
		 $get_item_row = $get_item_name->fetch(PDO::FETCH_ASSOC);
		 $item_name = $get_item_row['mat_name'];
	
		 //check if record exists
		 $check= $conn->prepare("SELECT id FROM materials_stock  WHERE store_id='".$_SESSION['IRIS_STORE_ID']."' AND id='".$material."' LIMIT 1");
		 $check->execute();
		 $check_count = $check->rowCount();		 
		 if($check_count==0){
			 die("<div class='alert alert-danger'> * Record not in stock. Please initialize the item by clicking on <strong>New Stock</</div> to continue!");			 
		 }else{
			 $update = $conn->prepare("UPDATE materials_stock SET quantity=quantity+'".$quantity."' WHERE id='".$material."' AND store_id='".$_SESSION['IRIS_STORE_ID']."' LIMIT 1");
			 $update->execute();
		 }	
		 //Record stock movement
          $stock_trans = $conn->prepare("INSERT INTO stock_transaction(stock_id,remarks,user_id,trans_date,trans_time,cr_dr,quantity,ref_no)VALUES('".$material."','".$remark."','".$_SESSION['IRIS_USER_ID']."',curdate(),curtime(),'D','".$quantity."','".$ref_no."')");	
		  $stock_trans->execute();
	    $log_desc ="Updated stock quantity for  <strong>".$item_name." by ".$quantity."</strong>";
		//Log Activity
		$log = $conn->prepare("INSERT INTO system_logs(system_date,time_stamp,user_id,log_desc,doc_type,doc_no)VALUES(curdate(),curtime(),'".$_SESSION['IRIS_USER_ID']."','".$log_desc."','OTHER','')");
		$log->execute(); 		 
		 $conn->commit();
		 echo "<div class='alert alert-success'> Stock item updated </div>";
		 
		 //reload user reports
		 //echo "<script>getdata(1);</script>";	
	 }catch(PDOException $e){
		 $conn->rollback();
		 die("<div classs='alert alert-danger'> Database Error:-".$e->getMessage()."</div>");		 
	 }
}else{
die("<font color='red'>You are not authorized to access this content.</font>");
}	